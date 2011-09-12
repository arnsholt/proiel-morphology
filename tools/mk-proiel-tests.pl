#!/usr/bin/env perl

use strict;
use warnings;

use DBI qw//;
use Getopt::Long;
use Lingua::XFST;
use List::MoreUtils qw/zip/;

my @proiel_sequence = qw/person number tense mood voice gender case
    degree strength inflection/;
my %proiel_conversion = (
    person => {
        '1' => '1st',
        '2' => '2nd',
        '3' => '3rd',
    },
    number => {
        's' => 'Sg',
        'd' => 'Du',
        'p' => 'Pl',
    },
    tense => {
        'p' => 'Pres',
        'i' => 'Impf',
        'l' => 'Pqp',
        'a' => 'Aor',
        'f' => 'Fut',
        'r' => 'Perf',
        't' => 'FutII',
        's' => 'Result',
        'u' => 'Past',
    },
    mood => {
        'i' => 'Ind',
        's' => 'Subj',
        'm' => 'Impv',
        'o' => 'Opt',

        'n' => 'Inf',
        'p' => 'Part',
        'd' => 'Ger',
        'g' => 'Gerv',
        'u' => 'Sup', # TODO: Distinguish between first and second supine
    },
    voice => {
        'a' => 'Act',
        'e' => 'MidPass',
        'm' => 'Mid',
        'p' => 'Pass',
    },
    gender => {
        'o' => 'MN',
        'p' => 'MF',
        'q' => 'MFN',
        'r' => 'FN',

        'm' => 'Masc',
        'f' => 'Fem',
        'n' => 'Neut',
    },
    case => {
        'n' => 'Nom',
        'v' => 'Voc',
        'a' => 'Acc',
        'g' => 'Gen',
        'd' => 'Dat',
        'b' => 'Abl',
        'i' => 'Ins',
        'l' => 'Loc',

        'c' => 'GenDat',
    },
    degree => {
        'p' => 'Pos',
        'c' => 'Comp',
        's' => 'Super',
    },
    # Strength should never have values for Latin data.
    strength => {
        #'w' => 'weak',
        #'s' => 'strong',
        #'t' => 'weak/strong',
        'w' => 'STRENGTH',
        's' => 'STRENGTH',
        't' => 'STRENGTH',
    },
    inflection => {
        'i' => 'Infl',
        'n' => 'NonInfl',
    },
);

# TODO: Finish creating PoS tags.
my %pos_conversion = (
    'A-' => '+Adj',
    'C-' => '+Conj',
    'Df' => '+Adv',
    'Dq' => '+Adv',
    'Du' => '+Adv',
    'F-' => '+TODO',
    'G-' => '+Sub',
    'I-' => '+TODO',
    'Ma' => '+TODO',
    'Mo' => '+TODO',
    'Nb' => '+Noun',
    'Ne' => '+Name',
    'Pc' => '+Pron',
    'Pd' => '+Pron',
    'Pi' => '+Pron',
    'Pk' => '+Pron',
    'Pp' => '+Pron',
    'Pr' => '+Pron',
    'Ps' => '+Pron',
    'Pt' => '+Pron',
    'Px' => '+Pron',
    'R-' => '+Prep',
    'V-' => '+Verb',
    'Vd' => '+Verb+Dep', # Hack to handle deponent verbs.
);

#my ($user, $pass, $db, $host);
my $user = $ENV{SQLUSER} // 'arne';
my $pass = $ENV{SQLPASS};
my $db   = $ENV{SQLDB}   // 'proiel';
my $host = $ENV{SQLHOST} // 'localhost';
my $result = GetOptions('user=s'     => \$user,
                        'password=s' => \$pass,
                        'db=s',      => \$db,
                        'host=s',    => \$host,);
exit 1 if not $result;

my $dbh = DBI->connect("DBI:mysql:database=$db;host=$host", $user, $pass, {RaiseError => 1, AutoCommit => 1});
my $query = <<'SQL';
SELECT DISTINCT l.part_of_speech pos, l.lemma lemma, t.form form, t.morphology msd
FROM lemmata l, tokens t, sentences s, source_divisions sd
WHERE l.id  = t.lemma_id
  AND s.id  = t.sentence_id
  AND sd.id = s.source_division_id
  AND sd.source_id = ?
SQL
my $sth = $dbh->prepare($query);

my $net = Lingua::XFST::Network->new(file => 'latin.fst');

make_tests($sth, 2, 'vulgata');
make_tests($sth, 5, 'bg');

sub make_tests {
    my ($sth, $id, $filename) = @_;

    $filename = "t/99-proiel-$filename.t";
    open my $file, '>', $filename or die "Couldn't open $filename for writing: $!";

    print $file <<'PERL';
#!/usr/bin/env perl

use Morph;
use Test::More;

PERL

    $sth->execute($id);
    my $rows = 0;
    while(my $row = $sth->fetchrow_hashref) {
        $rows++;
        my $tag = convert_tag($row);
        my $todo = @{$net->apply_up($row->{form})}? '': ', \'NIY\'';
        print $file "test_simple('$row->{form}', '$row->{lemma}$tag'$todo);\n";
    }

    print $file <<'PERL';

done_testing();
PERL
}

sub convert_tag {
    my ($row) = @_;
    my @fields = split m//, $row->{msd};

    my %tag = zip @proiel_sequence, @fields;
    delete $tag{inflection};
    %tag = map {$_, $tag{$_} ne '-'? "+$proiel_conversion{$_}{$tag{$_}}": ''} keys %tag;

    if($tag{mood} eq '+Part') {
        $tag{voice} = '';
        # A bit dirty, but the tense and mood fields have to swap places in
        # participles.
        @tag{qw/tense mood/} = @tag{qw/mood tense/};
    }
    if($tag{mood} eq '+Inf') {
        # Same as above, but for infinitives.
        @tag{qw/tense mood/} = @tag{qw/mood tense/};
    }
    if($row->{pos} eq 'V-' and $row->{lemma} =~ m/or\z/msx) {
        $row->{pos} = 'Vd';
    }

    my $tag = $pos_conversion{$row->{pos}} . join('', @tag{qw/tense mood
        person degree gender case number voice/});

    return $tag;
}

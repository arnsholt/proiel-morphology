#!/usr/bin/env perl

use strict;
use warnings;

use XFSM;

usage(die => 1) if scalar @ARGV != 1;

my %tag_to_field = (
    Adj => 'pos',
    Adv => 'pos',
    Noun => 'pos',
    Name => 'pos',
    Verb => 'pos',
    Prep => 'pos',
    Conj => 'pos',
    Sub  => 'pos',
    Pron => 'pos',

    '1st' => 'person',
    '2nd' => 'person',
    '3rd' => 'person',

    Pl => 'number',
    Sg => 'number',

    Masc => 'gender',
    Fem  => 'gender',
    Neut => 'gender',
    MN   => 'gender',
    MFN  => 'gender',

    Nom => 'case',
    Voc => 'case',
    Acc => 'case',
    Gen => 'case',
    Dat => 'case',
    Abl => 'case',

    Pos   => 'degree',
    Comp  => 'degree',
    Super => 'degree',

    Act  => 'voice',
    Pass => 'voice',

    Pres  => 'tense',
    Impf  => 'tense',
    Fut   => 'tense',
    Perf  => 'tense',
    Pqp   => 'tense',
    FutII => 'tense',

    Ind   => 'mood',
    Subj  => 'mood',
    Impv  => 'mood',
    Inf   => 'mood',
    Part  => 'mood',
    Ger   => 'mood',
    Gerv  => 'mood',
    SupI  => 'mood',
    SupII => 'mood',

    Dep => '__ignore__',
);
my %tag_to_value = (
    Adj => 'A-',
    Adv => 'D-',
    Noun => 'Nb',
    Name => 'Ne',
    Verb => 'V-',
    Prep => 'R-',
    Conj => 'C-',
    Sub => 'G-',
    Pron => 'P-',

    '1st' => '1',
    '2nd' => '2',
    '3rd' => '3',

    Pl => 'p',
    Sg => 's',

    Masc => 'm',
    Fem  => 'f',
    Neut => 'n',
    MN   => 'o',
    MFN  => 'q',

    Nom => 'n',
    Voc => 'v',
    Acc => 'a',
    Gen => 'g',
    Dat => 'd',
    Abl => 'b',

    Pos   => 'p',
    Comp  => 'c',
    Super => 's',

    Act  => 'a',
    Pass => 'p',

    Pres  => 'p',
    Impf  => 'i',
    Fut   => 'f',
    Perf  => 'r',
    Pqp   => 'l',
    FutII => 't',

    Ind   => 'i',
    Subj  => 's',
    Impv  => 'm',
    Inf   => 'n',
    Part  => 'p',
    Ger   => 'd',
    Gerv  => 'g',
    SupI  => 'u',
    SupII => 'u',

    Dep => '__ignore__',
);
my @proiel_order = qw/person number tense mood voice gender case degree
                      strength inflection/;

open my $corpus, '<', $ARGV[0] or die "Couldn't open $ARGV[0] for reading: $!\n";
my $latin = XFSM::Network->new(file => 'latin.fst');

my $seen = 0;
my $analysed = 0;
my $wrong = 0;

while(my $line = <$corpus>) {
    $line =~ s/\A\s+|\s+\z//;
    next if not $line;

    my ($word, $tag) = (split m/\s+/, $line)[0,2];
    my @analyses = @{$latin->apply_up($word)};
    my %analyses = map { to_proiel($_), 1 } @analyses;

    $seen++;
    $analysed++ if @analyses;
    $wrong++ if @analyses and not exists $analyses{$tag};

    if(@analyses and not exists $analyses{$tag}) {
        print "$word/$tag: ", join(', ', keys %analyses), "\n"; #,
        #                " (", join(', ', @analyses), ")\n";
    }
}

printf "$seen seen, $analysed analysed; %.2f%% coverage\n", 100*$analysed/$seen;
printf "$wrong wrong (%.2f%%)\n", 100*$wrong/$analysed;

sub to_proiel {
    my ($analysis) = @_;
    my ($lemma, @tags) = ($analysis =~ m/\+?(\w+)/msxg);

    my $fields = {lemma => $lemma};
    map { die "Unknown tag $_" if not exists $tag_to_field{$_} or not exists $tag_to_value{$_};
          $fields->{$tag_to_field{$_}} = $tag_to_value{$_} } @tags;
    #$fields->{inflection} = 'i' if scalar @{$fields}{@proiel_order};

    my $infl;
    FIELD: for (@proiel_order) {
        if(exists $fields->{$_}) {
            $infl = 1;
            last FIELD;
        }
    }
    $fields->{inflection} = $infl? 'i': 'n';

    if(exists $fields->{mood} and $fields->{mood} eq 'p') {
        $fields->{voice} = $fields->{tense} eq 'r'? 'p': 'a';
    }

    return join '', map {defined $_? $_: '-'} @{$fields}{@proiel_order};
}

sub usage {
    my %args = @_;

    print STDERR "Usage: $0 corpus\n";

    exit($args{die}) if defined $args{die};
}

#!/usr/bin/env perl

use strict;
use warnings;

use DBI qw//;
use Getopt::Long;

my ($user, $pass, $db);
my $result = GetOptions('user=s'     => \$user,
                        'password=s' => \$pass,
                        'db=s',      => \$db,);
exit 1 if not $result;

my $dbh = DBI->connect("DBI:mysql:database=$db", $user, $pass, {RaiseError => 1, AutoCommit => 1});
my $query = <<'SQL';
SELECT l.lemma lemma, count(t.form) count
FROM lemmata l, tokens t, sentences s, source_divisions sd
WHERE l.id  = t.lemma_id
  AND s.id  = t.sentence_id
  AND sd.id = s.source_division_id
  AND sd.source_id = ?
GROUP BY lemma
ORDER BY count DESC
SQL

my $sth = $dbh->prepare($query);

make_list($sth, 2, 'vulgata.lemmata');
make_list($sth, 5, 'bg.lemmata');

sub make_list {
    my ($sth, $id, $filename) = @_;

    open my $file, '>', $filename or die "Couldn't open $filename for writing: $!\n";
    $sth->execute($id);
    while(my $row = $sth->fetchrow_hashref) {
        print $file "$row->{lemma}\t$row->{count}\n";
    }

    close $file;
}

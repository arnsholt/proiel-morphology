#!/usr/bin/env perl

use strict;
use warnings;

use XFSM;

usage(die => 1) if scalar @ARGV != 1;

open my $corpus, '<', $ARGV[0] or die "Couldn't open $ARGV[0] for reading: $!\n";
my $latin = XFSM::Network->new(file => 'latin.fst');

my $seen = 0;
my $analysed = 0;

while(my $line = <$corpus>) {
    $line =~ s/\A\s+|\s+\z//;
    next if not $line;

    my ($word, $tag) = (split m/\s+/, $line)[0,2];
    my @analyses = @{$latin->apply_up($word)};

    $seen++;
    $analysed++ if @analyses;
}

printf "$seen seen, $analysed analysed; %.2f%% coverage\n", 100*$analysed/$seen;

sub usage {
    my %args = @_;

    print STDERR "Usage: $0 corpus\n";

    exit($args{die}) if defined $args{die};
}

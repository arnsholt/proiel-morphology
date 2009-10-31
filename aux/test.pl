#!/usr/bin/perl

use strict;
use warnings;

my @vroots = qw/amo moneo rego capio audio/;
my @persons = qw/+1S +2S +3S +1P +2P +3P/;
my @tenses = qw/+Pres+Ind +Pres+Subj +Fut+Ind +Impf+Ind +Impf+Subj/;

#die "Usage $0 lexc-file\n" if scalar @ARGV < 1;
#my $lexicon = $ARGV[0];

#print "read lexc $lexicon\n";
#print "apply down\n";

for my $v (@vroots) {
    for my $t (@tenses) {
        for my $p (@persons) {
            print "echo apply down $v+Verb$t$p+Act\n";
            print "apply down $v+Verb$t$p+Act\n";
            print "echo apply down $v+Verb$t$p+Pass\n";
            print "apply down $v+Verb$t$p+Pass\n";
        }
    }
}

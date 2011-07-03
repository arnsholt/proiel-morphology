package Morph;

use strict;
use warnings;

use Exporter qw/import/;
our @EXPORT = qw/test test_hash test_simple test_not/;

use Lingua::XFST;
use Test::More;

our $formcount = 0;
my $latin = Lingua::XFST::Network->new(file => 'latin.fst');

sub test {
    my ($tag, $forms) = @_;

    my %lookup = map {$_ => 1} @{$latin->apply_down($tag)};
    is(scalar keys %lookup, scalar @$forms, 'same number of generated forms');
    $formcount += scalar @$forms;

    for my $form (@$forms) {
        if(ref $form eq 'HASH') {
            TODO: {
                local $TODO = $form->{todo};
                $form = $form->{form};
                my $msg = "`$form' is generated from `$tag'";
                ok(exists $lookup{$form}, $msg);
            }
        }
        else {
            my $msg = "`$form' is generated from `$tag'";
            ok(exists $lookup{$form}, $msg);
        }
    }
}

sub test_hash {
    my ($tag_base, $forms) = @_;

    for my $key (keys %$forms) {
        if(ref $forms->{$key} eq 'HASH') {
            test_hash($tag_base . $key, $forms->{$key});
        }
        else {
            test($tag_base . $key, $forms->{$key});
        }
    }
}

sub test_simple {
    my ($form, $tag, $todo) = (@_, '');

    my $msg = "`$form' analysed as `$tag'";
    my %lookup = map {$_ => 1} @{$latin->apply_up($form)};
    if($todo) {
        TODO: {
            local $TODO = $todo;
            ok(exists $lookup{$tag}, $msg);
        }
    }
    else {
        ok(exists $lookup{$tag}, $msg);
    }
}

sub test_not {
    my ($tag) = @_;
    my @gens = @{$latin->apply_down($tag)};
    is(scalar @gens, 0, "nothing generated from $tag");
    $formcount++;
}

1;

#!/usr/bin/perl

use XML::SAX::ParserFactory;

die "Usage: $0 infile outfile" if scalar @ARGV != 2;

my ($input_file, $output_file) = @ARGV;
open my $input, '<', $input_file;
open my $output, '>', $output;

my $parser = XML::SAX::ParserFactory->parser(Handler => MyHandler->new);

{
package MyHandler;

sub new {
    my ($class) = @_;
    return bless {} => $class;
}

sub start_element {
    my ($self, $elt) = @_;
}

sub end_element {
    my ($self) = @_;
}
}

#!/bin/perl

use strict;
use warnings;
use List::Util qw[min max];

my $filename='data.txt';
my $checksum=0;

open (my $fh, $filename) or die "couldn't open '$filename' $!";

while (my $row=<$fh>) {
  chomp $row;
  my @row = split(' ',$row);
  print "@row\n";
  my $min = min @row;
  my $max = max @row;
  my $diff = $max-$min;
  print "row min: '$min' :::: row max: '$max' :::: row checksum: '$diff'\n";
  $checksum=$checksum+$diff;
}


print "checksum: '${checksum}'\n";

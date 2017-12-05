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
  foreach my $numerator (@row) {
    foreach my $denominator (@row) {
      print "checking '$numerator' against '$denominator'\n";
      my $answer = $numerator/$denominator;
      if (int($answer) == $answer)  {
        print "Answer is integer: '$answer'\n";
        if ($answer != 1) {
          $checksum=$checksum+$answer;
        }
      } else {
        print "Answer is float: '$answer'\n";
      }
    }
  }
}


print "checksum: '${checksum}'\n";

#!/bin/perl

#use strict;
use warnings;

my $filename='passlist.txt';
my $passes=0;
my $fails=0;
my $rowfails;
open (my $fh, $filename) or die "'no $filename' $!";

while (my $row=<$fh>) {
  chomp $row;
  my @row = split(' ',$row);
  my @sortedrow;
  $rowfails=0;
  foreach my $word (@row) {
    my $sortedword = join "", sort split //, $word;
    push @sortedrow, $word;
  }
  foreach my $sortedword (@sortedrow) {
    my $count = grep { $_ eq $sortedword } @sortedrow;
    if ( $count > 1) {
          $rowfails=$rowfails+1;
        }
      }
    
    if ($rowfails != 0) {
      print " passphrase failed with $rowfails anagrams\n";
      $fails=$fails+1;
    } else {
      print " passphrase passed\n";
      $passes=$passes+1;
  }
}
print "Passed phrases: $passes\n Failed phrases: $fails\n";

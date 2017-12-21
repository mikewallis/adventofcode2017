#!/bin/perl

use strict;
use warnings;

my $blocks=0;
my $direction=0;

my $filename='maze.input';

open (my $fh, $filename) or die "can't open $filename $!";

while (my $row=<$fh>) {
  chomp $row;
  my @row - split(', ',$row);
  print "@row\n"; 

#!/bin/perl

use strict;
use warnings;

my $filename='maze.input';

open (my $fh, $filename) or die "'no $filename' $!";
chomp (my @maze = <$fh>);

my $maze_size=@maze;
print "The maze is $maze_size units big.\n";

my $position = 0;
my $steps = 0;
while ($position < $maze_size) {
  my $temp = $maze[$position];
  $position=$position+$maze[$position];
  $maze[$temp]=$maze[$temp]+1;
  $steps=$steps+1;
  print "my position in the maze is $position and the value is $temp - this has taken $steps steps\n";
}
print "Navigating the maze took $steps steps\n";

close $fh;

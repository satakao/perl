use strict;
use warnings;

open(FILE,'file.txt') or die "$!";
while (my $line = <FILE>){
  print $line;
}
close(FILE);
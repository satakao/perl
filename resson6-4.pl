use strict;
use warnings;

foreach my $value (0..255){
  #%Xで16進数表示、02で2桁表示の数字が入らないとこは0で埋める。
  printf("%02X ", $value);
  print "\n" if ($value % 16 == 15);
}
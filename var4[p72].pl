use strict;
use warnings;

#配列の足し算
my @score = (64,90,75);
print $score[0] + $score[1] + $score[2],"\n";

#配列をfor文で足していく
my $sum = 0;
foreach my $item (@score){
  $sum += $item;
}
print $sum;
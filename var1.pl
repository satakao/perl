use strict;
use warnings;

# \は\以降をそのまま表示させる。スペース以降は通常どうりに戻る。
my $name = "\"Programming Lesson\"";
print "\$name is $name\n";

#.で文字列の結合
my $name2 = "Programming" . "Lesson";
print "\$name2 is $name2\n";

#P27クイズ
print "You must write \¥\" when you want a \" in a string.\n";

#aやbの文字列は演算子で計算できないためエラー出る
my $x = "a";
my $y = "b";
print $x + $y;

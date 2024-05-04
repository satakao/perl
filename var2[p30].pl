use strict;
use warnings;

#10→16進数への変換
foreach my $value (0..255){
  my $str = sprintf('%X', $value);
  print $value, '->', $str, "\n";
}

#substr(文字列の一部分を切り出す)
my $s = substr('Programming Lesson',12);
print "$s\n";

my $str1 = 'Programming Lesson is fun!';
my $s1 = substr($str1, 12 , 6 , 'Perl');
print "\$str1 = $str1\n";
print "\$s1 = $s1\n";

#関数のindexは指定した文字列の検索してどこにあるか表示するrindexは後ろから探して見つけた位置を表示する
print index('Programming Lesson', 'ing');
print "\n";

#ヒアドキュメント(EOD)、長い文字列を変数に格納。改行要らなくなる。EOD内の変数は展開される。
my $str2 = <<"EOD";
Programming Lesson
Programming Perl
EOD

print $str2;

use strict;
use warnings;

my %sum;
#任意のファイルを開いて開けない場合はスクリプトを終了しエラー出力をする
open(FILE,'log.txt') or die "$!";
#ファイルから1行読み込んで行があれば$lineに格納する
while (my $line = <FILE>){
  #空白で区切れない行(今回だと日付)はそもそも変数にも
  my ($work, $time) = split(/ /,$line);
  #definedで$time内に値が入っていれば処理を行う
  if (defined($time)){
    $sum{$work} += $time;
  }

}
close (FILE);

foreach my $key (sort keys %sum){
  #キーに紐づいた値を60で割りintで整数部分のみ抜き取って分から時間に変換している
  my $hour = int($sum{$key} / 60);
  #％で余りのみを抜き出して分を格納している
  my $min = $sum{$key} % 60;
  #printfで指定するフォーマットに沿って表示する。
  printf ("%-8s %3d時間%3d分\n", $key,$hour,$min);
}
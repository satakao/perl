use strict;
use warnings;

#現在の時刻を使用して条件分岐
my $time = localtime();
my ($sec,$min,$hour) = localtime();
print $time,"\n";
if ($hour < 16){
  print 'こんにちは';
  print '今は',$hour,'時です。';
  print '眠くないですか。',"\n";
}

#ターミナルに入力した文字から条件分岐
print "暗証番号を入力してください。\n";
my $line = <STDIN>;
chomp($line);
#==は数として比較、eqは文字列として比較、== "0314"は==があることで文字列ではなく数と見られて314でも条件が揃う。
if($line == "0314"){
  print "金庫が開きました。\n";
}else{
  print "暗証番号が違います。\n";
}

#andとnot式の確認
my $x = 0;
my $y = 0;

#xが1(true)じゃない時,yも1じゃない時だと条件が揃う
if(not $x and not $y){
  print '両方偽です。',"\n";
}

#xかyが1じゃない時(両方0の時のみ)に条件が揃う上記と同じ意味
if(not( $x or $y)){
  print '両方偽です。',"\n";
}
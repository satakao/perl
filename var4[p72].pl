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
print $sum,"\n";

#qwを使うと空白区切りで文字列を格納できる
my @week = qw(Sun Mon Tue Wed Thu Fri Sat);
print @week,"\n";

#以下で空か確認もできる
if (@week){
  print "satou\n";
}
#joinで配列の連結
my @score1 = (64,90,75);
print '点数は'.join('点と、',@score1).'点です。',"\n";

#splitで文字列からリストに分解//の間にある文字を文字列の中に見つけたらそこで区切って要素に分解するただの//だと1文字ごとに区切る
my $line = 'Hello,world!';
my @array = split(//,$line);
#""をつけるとリストで表示してくれる。""をつけないとsplitしても見た目上は連結されて表示される
print "@array\n";
print join(':',@array),"\n";

#pushで配列の最後に要素を追加できる
my @array0 = ('one','two','three');
push(@array,'FOUR','FIVE');
print "@array0\n";

#popは配列の最後の要素を取り出す
my $item = pop(@array0);
print "@array0\n";
print $item,"\n";

#spliceは配列の中を指定して入れ替え(削除のみも可)できる
my @array1 = ('a','b','c','d','e','f');
my @xyz = ('x','y','z');

my @remove = splice(@array1,1,4,@xyz);
print "@array1\n";
print "@remove\n";

#sortはabc順に並び替えるreverceは逆順に並び替える
my @array2 = ('Sun','Mon','Tue','Wed','Thu','Fri','Sat');
my @sorted = sort(@array2);
my @reversed = reverse(sort(@array2));
print "@sorted\n";
print join(',',@sorted),"\n";
print join(',',@reversed),"\n";

#sortでリストの数を順番に並び替え
my @array3 = (31,41,59,26,53,58,9,93);
#先頭の文字だけで比較してしまうため9が後ろにいってしまう
my @sorted1 = sort(@array3);
#下記だと数として比較してくれる
my @sorted2 = sort{$a <=> $b} @array3;
print join(',',@sorted1),"\n";
print join(',',@sorted2),"\n";

#問題4-2(P104)
my $time = '01:23:45';
my ($hour,$min,$sec) = split(/:/,$time);

print "$hour時$min分$sec秒です。\n";

#問題4-3
#indexは数字ではなく要素の番号(配列のどこの要素か)を意味している
my $index = 0;
my @array4 = (2,4,5);
if (0 <= $index and $index <= @array-1){
  print $array4[$index], "\n";
}
#問題4-4
#(1)
$item = 6;
#削除ではなく挿入する場合位置は左に来るため@array4で-1を入れない、0にすると削除ではなく追加になる
splice(@array4,@array4,0,$item);
print "@array4\n";

#(2)
#spliceは範囲指定なので@array-1ではなく-1だけでもok
$item = splice(@array4,-1);
print @array4,"\n";
print $item,"\n";

#(3)
#0番目(1番最初の要素)から1つ目の要素だけ削除しitemに入れる;
$item = splice(@array4,0,1);
print $item,"\n";

#(4)
my @array5 = (2,4,5);
$item = 8;
splice(@array5,0,0,$item);
print @array4,"\n";

#(5)
splice(@array4,$index,1,$item);

#問題4-5

#問題4-6
use strict;
use warnings;

my @info = (
    'hyuki@hyuki.com:Hiroshi Yuki:37',
    'hanako@hyuki.com:Hanako Sato:23',
    'tomura@hyuki.com:Tomura:22',
);
print "<html><table border=\"1\">\n";


foreach my $item1 (@info){
  my($name,$email,$age) = split(/:/,$item1);
  print "<tr><td>";
  print join("</td><td>",$email,$name,$age);
  print "</td></tr>\n";

}

print "</table></html>\n";

#問題4-7
my @kandigit = qw(○ 一 二 三 四 五 六 七 八 九);
print @kandigit[5],"\n";

#問題4-8
my @array6 = (0,1,2,3,4,5,6,7,8,9,10);
my @reversed1 = reverse sort{$a <=> $b } @array6;
print "@reversed1\n";

#問題4-9
#区切り文字,に注意して分解するときなど,を含まないように注意する
my ($myname,$mymsg,$mytime) = qw(名前 文章 時刻);
my $data = join(",", $myname,$mymsg,$mytime);
print $data,"\n";

my ($myname,$mymsg,$mytime) = split(/,/,$data);
print $myname,"\n";
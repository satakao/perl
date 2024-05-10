use strict;
use warnings;

my %hash = (
  '結城浩' => 36,
  '佐藤花子' => 22,
  'とむら' => 21,
  '高橋マモル' => 22,
  );
$hash{'たかお'} = 29;
foreach my $key (sort(keys(%hash))){
  my $value = $hash{$key};
  print "$key → $value\n";
}

#ハッシュの値とキーを入れ替える
my %age_to_name;
foreach my $key (keys %hash) {
    my $value = $hash{$key};
    $age_to_name{$value} = $key;
}

foreach my $age (keys %age_to_name) {
    print "$age => $age_to_name{$age}\n";
}

#ハッシュではキーの重複がないのを利用して配列から重複している数を取り除く
my %uniq;
my @array = (3,1,4,1,5,9,2,6,5,3,5);
foreach my $item(@array){
  $uniq{$item} = 1;
}
my @uniqarray = keys(%uniq);
print "@uniqarray\n";

#ハッシュを利用して同じものの登場回数を数える
my %counter;
my @name = (
  'Yuki','Tomura','Sato','yuki','Mamoru','Tomura','Tomura'
  );
  foreach my $name(@name){
    $counter{$name}++;
  }
  foreach my $name (sort keys %counter){
    print "$name $counter{$name}\n";
  }

  #環境変数の表示
  foreach (keys %ENV){
    print "$_ → $ENV{$_}\n";
  }

#値が複数ある場合、それぞれ変数に持たせる
my %user2 = (
  'hyuki@hyuki.com' => '結城浩,36',
  'hanako@hyuki.com' => '佐藤花子,22',
  'hanachan@hyuki.com' => '佐藤花子,20',
  'tomura@hyuki.com' => 'とむら,21',
  'mamoru@hyuki.com' => '高橋マモル,22',
  );

foreach my $key (sort keys %user2){
  my($name,$age) = split(/,/,$user2{$key});
  print $key, 'の名前は',$name,'で、年齢は',$age,'歳です。',"\n";
}

#問題5-3
my %kansuzi = (
  '○' => 0,
  '一' => 1,
  '二' => 2,
  '三' => 3,
  '四' => 4,
  '五' => 5,
  '六' => 6,
  '七' => 7,
  '八' => 8,
  '九' => 9,
  '十' => 10,
  );
print '$kansuzi (一) ' ,"→ $kansuzi{'一'}\n";
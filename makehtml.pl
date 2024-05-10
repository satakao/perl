use strict;
use warnings;

#変換表
my %keyword = (
  '----' => '<hr>',
  '-mail' => '<a href="mailto:hyuki@hyuki.com">hyuki@hyuki.com</a>',
  '-home' => '<a href="http://www.hyuki.com/">http://www.hyuki.com/</a>',
  '-notice' => 'リンクはご自由に。フィードバックはお気軽に。',
  );
if (@ARGV == 0) {
  #引数が何もなかったので使い方を表示して終了
  print "Usage: perl makehtml.pl input.txt > output.html";
  exit(-1);
}
print "<!DOCTYPE html>\n";
print "<html lang = \"ja\">\n";
print "<meta charset = \"UTF-8\">\n";
foreach my $file (@ARGV){
  open(FILE,$file) or die "$!";
  while (my $line = <FILE>) {
    chomp($line);
    if ($line =~/^\*\*(.*)/) {
      print "<h2>$1</h2>\n";
    }elsif($line =~/^\*(.*)/){
      print "<center><h1>$1</h1></center>\n";
    }elsif(exists($keyword{$line})){
      print "$keyword{$line}\n";
    }else{
      print "$line\n";
    }
  }
  close(FILE);
}
print "</html>\n";
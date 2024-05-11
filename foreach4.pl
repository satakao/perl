use strict;
use warnings;

#現在のディレクトリの一覧を表示させる
opendir(DIR,'.') or die "$!";
foreach my $entry (readdir(DIR)){
  print "$entry\n";
}
closedir(DIR);
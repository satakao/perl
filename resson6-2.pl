use strict;
use warnings;

opendir(DIR,".") or die "$!";
foreach my $dir (sort readdir DIR){
  next if(($dir eq '.' )or($dir eq '..') );
  print "$dir\n";
}
closedir(DIR);

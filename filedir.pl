use strict;
use warnings;

opendir(DIR,'.') or die "$!";
foreach my $entry (readdir(DIR)){
  print "$entry\n";
}
closedir(DIR);

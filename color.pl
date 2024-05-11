use strict;
use warnings;

my @range = ('00', '33','66','99','CC','FF');
print '<html>';
print '<h1>Color Chart</h1>';
print '<pre>';
foreach my $rr (@range) {
  foreach my $gg (@range) {
    foreach my $bb (@range) {
      print qq| <font color="$rr$gg$bb"><tt>#$rr$gg$bb</tt><font>|;
    }
    print "\n";
  }
}
print '</pre>';
print '</html>';

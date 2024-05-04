use strict;
use warnings;

my $name = '佐藤隆男';
my $mail = 'satou@satoui.com';
my $html = <<"EOD";
<html>
<head>
<title>$nameのホームページ</title>
</head>
<body>
<h1>>$nameのホームページ</h1>
<p>
$nameのホームページへようこそ
</p>
<p>
ぜひメールをくださいね。
アドレスは、<a href="mailto:$mail">$mail</a>です。
</p>
</body>
</html>
EOD

print $html;
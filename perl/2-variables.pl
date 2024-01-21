#!/bin/perl

# komentarz

=begin
 * długi komentarz
 * na kilka linii
=cut

	$string ="hello \$ \" ";
	$string2="world";

	print $string . $string2;
	print "\n";
	print "$string" . "$string2 \n";

	$str1 = <<"EOF";
długi tekst
druga linia
EOF

$liczba=123;
$znak='a';
@tab=(4, 5, 6);
%hash=('key', 10, 'key1', 'value');
$foo=123;
@foo=("ala", "ma", "kota");
%foo=('key', 'value');

print "liczba=$liczba znak=$znak string=$string str1=$str1 tab[0]=$tab[0] hash{'key'}=$hash{'key'}\n";
print "\$foo=$foo \@foo=@foo \$foo[0]=$foo[0] \%foo{'key'}=$foo{'key'}\n";

$hex=0xff;
printf "hex=$hex";

$smile  = v9786;
$foo    = v102.111.111;
$martin = v77.97.114.116.105.110; 
$znak_a = v97;
$znak_a_hex = "\x{61}";
$znaki_abc = v97.98.99;

print "smile = $smile\n";
print "foo = $foo\n";
print "martin = $martin\n";
print "znak_a = $znak_a\n";
print "znak_a_hex = $znak_a_hex\n";
print "znaki_abc = $znaki_abc\n";

print "File name ". __FILE__ . "\n";
print "Line Number " . __LINE__ ."\n";
print "Package " . __PACKAGE__ ."\n";

$ref=\$liczba;
print "liczba=$liczba ref=$ref value=$$ref\n";



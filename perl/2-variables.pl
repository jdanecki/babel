#!/bin/perl
# comment

=begin
 * long comment
 * on multiple lines
=cut

    $string ="hello \$ \" ";
    $string2="world";

    print $string . $string2;
    print "\n";
    print "$string" . "$string2 \n";

    $str1 = <<"EOF";
long text
second line
EOF

$number=123;
$char='a';
@array=(4, 5, 6);
%hash=('key', 10, 'key1', 'value');
$foo=123;
@foo=("ala", "ma", "kota");
%foo=('key', 'value');

print "number=$number char=$char string=$string str1=$str1 array[0]=$array[0] hash{'key'}=$hash{'key'}\n";
print "\$foo=$foo \@foo=@foo \$foo[0]=$foo[0] \%foo{'key'}=$foo{'key'}\n";
$hex=0xff;
printf "hex=$hex";

$smile  = v9786;
$foo    = v102.111.111;
$martin = v77.97.114.116.105.110; 
$char_a = v97;
$char_a_hex = "\x{61}";
$chars_abc = v97.98.99;

print "smile = $smile\n";
print "foo = $foo\n";
print "martin = $martin\n";
print "char_a = $char_a\n";
print "char_a_hex = $char_a_hex\n";
print "chars_abc = $chars_abc\n";

print "File name ". __FILE__ . "\n";
print "Line Number " . __LINE__ ."\n";
print "Package " . __PACKAGE__ ."\n";

$ref=\$number;
print "number=$number ref=$ref value=$$ref\n";



#!/bin/perl

$size=10;
$size_x=2;
$size_y=5;

@array=(1,2,3);
$size=@array;
@tab1=qw/it's array too/;

print "array=@array size=$size size=", scalar @array, "\n";
print "tab1=@tab1\n";

@tab_seq1=(1..10);
@tab_seq2=(a..j);

print "tab_seq1=@tab_seq1\n";
print "tab_seq2=@tab_seq2\n";

@tab1=(1,2,3);
$tab1[10]=10;
print "tab1=@tab1 size=", scalar @tab1, " max=$#tab1\n";

push @tab1, (4,5,6);
print "tab1=@tab1\n";
$a=pop @tab1;
print "tab1=@tab1 a=$a\n";

for ($i= 0; $i < $size; $i++) {
   $array[$i] = 100+$i;
   print "array[$i]= $array[$i]\n";
}

for ($y=0; $y < $size_y; $y++)
{
	for ($x=0; $x < $size_x; $x++)
	{
		$sheet[$y][$x] = 10*$y+$x;
		print "sheet[$y][$x] = $sheet[$y][$x] \n";
	}
}


#!/bin/perl

$rozmiar=10;
$rozmiar_x=2;
$rozmiar_y=5;

@tablica=(1,2,3);
$size=@tablica;
@tab1=qw/to też tablica/;

print "tablica=@tablica size=$size size=", scalar @tablica, "\n";
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

for ($i= 0; $i < $rozmiar; $i++) {
   $tablica[$i] = 100+$i;
   print "tablica[$i]= $tablica[$i]\n";
}

for ($y=0; $y < $rozmiar_y; $y++)
{
	for ($x=0; $x < $rozmiar_x; $x++)
	{
		$kartka[$y][$x] = 10*$y+$x;
		print "kartka[$y][$x] = $kartka[$y][$x] \n";
	}
}


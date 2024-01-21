#!/bin/perl

use Switch;

$g=0;
for ($i=0; $i < 10; $i++)
{
	print "i=$i\n";
	$b=$i;
}

print "start: b=i=$b\n";

for (; $b < 20; ) {
	print "b++=", $b++, "\n";
}

print "start: c=b=$b\n";
for ($c=$b; $c < 30; ) {
	print "++c=", ++$c, "\n";
}

print "start: d=c, e=c=%d\n", c;
for ($d=$c, $e=$c; $d < 40;) {  
	print "++d=", ++$d, " e++=", $e++, "\n";
}

$f=$e;
$g=0;
print "start: f=e=$e\n";
while ($e < 50) 
{
	print "++e=", ++$e, " e--=", $e--, " f--=", $f--, " ++f=", ++$f, " g=$g \n";
	$g++;
	if ($g > 10) { last;} 
}

while ($g > 0) 
{
	print "g=$g \n";
	$g--;
	last if ($g ==3);
}


while ($g > 0) 
{
	print "w dół g=$g \n";
	$g--;
} continue {
	print "continue g=$g\n";
}


print "start: g=$g\n";
do {
	print "do g--=", $g--, "\n";
} while($g > 0 );

for ($h=0; $h < 10; $h++)
{
	next if ($h==3);

	if ($h == 4) {
		print "mam 4\n";			
		next;
	}
	if ($h==5) { goto skok; }
	switch($h)
	{
		case 1 { print "jeden\n"; }
		else {print "coś innego niż 1, bo $h\n"; }
	}
	next;
skok:
	print "skok w bok: $h\n";		
}


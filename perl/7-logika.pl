#!/bin/perl

sub iloczyn
{
	$a=@_[0];
	$b=@_[1];
	print "iloczyn $a && $b =",  ($a && $b);
	print "\n";
	print "iloczyn $a and $b =", ($a and $b);
	print "\n";
}

sub suma
{
	$a=@_[0];
	$b=@_[1];
	
	print "suma $a or $b =",  ($a or $b);
	print "\n";
	print "suma $a || $b =",  ($a || $b);
	print "\n";
}

sub pokaz_bool
{
	 if (@_[1]) {
		print "@_[0] to true\n";
	}
	else {
		print "@_[0] to false\n";
	}

}

sub negacja
{
	$a=@_[0];
	$b=(not $a);
	$c=($b and $b);
	$d=$b and $b;
	
	pokaz_bool("a", $a);
	pokaz_bool("b", $b);
	pokaz_bool("c", $c);
	pokaz_bool("d", $d);
	pokaz_bool("negacja $a =", $b);
	
}


$zero=0;
$jeden=1;

iloczyn($zero, $zero);
iloczyn($zero, $jeden);
iloczyn($jeden, $zero);
iloczyn($jeden, $jeden);

suma($zero, $zero);
suma($zero, $jeden);
suma($jeden, $zero);
suma($jeden, $jeden);

negacja($zero);
negacja($jeden);

$a=3;
$b=1;
$c=2;

print "iloczyn: $a & $b =", $a & $b, "\n";
print "suma: $a | $b =", $a | $b, "\n";
print "suma modulo 2: $a ^ $b =", $a ^ $b, "\n";
print "negacja ~$b =", (~b) & 255 ,"\n";


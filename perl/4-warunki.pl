#!/bin/perl

$liczba1=2;
$liczba2=3;

if ($liczba1 < $liczba2) { print "$liczba1 < $liczba2 ->", $liczba1 < $liczba2, "\n";}
print "$liczba1 > $liczba2 ->", $liczba1 > $liczba2, "\n";

print "czy $liczba1 == $liczba1? ";
if ($liczba1 == $liczba1) { print "tak\n"; }

print "czy $liczba1 != $liczba2? ";
if ($liczba1 != $liczba2) { print "tak\n"; }
	
print "czy to nieprawda, że $liczba1 == $liczba2? ";
if (!($liczba1 == $liczba2)) { print "tak\n"; }

print "czy to prawda, że $liczba1 == $liczba1 -> ", $liczba1 == $liczba1 ? "tak" : "nie" ;



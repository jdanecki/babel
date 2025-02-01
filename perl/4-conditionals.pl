#!/bin/perl

$number1=2;
$number2=3;

if ($number1 < $number2) { print "$number1 < $number2 ->", $number1 < $number2, "\n";}
print "$number1 > $number2 ->", $number1 > $number2, "\n";
print "is $number1 == $number1? ";
if ($number1 == $number1) { print "yes\n"; }

print "is $number1 != $number2? ";
if ($number1 != $number2) { print "yes\n"; }
    
print "is it not true that $number1 == $number2? ";
if (!($number1 == $number2)) { print "yes\n"; }

print "is it true that $number1 == $number1 -> ", $number1 == $number1 ? "yes" : "no" ;


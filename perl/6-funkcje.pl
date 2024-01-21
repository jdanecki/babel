#!/bin/perl

use feature 'state';

sub hello {
	print "hello";
}

sub dodaj
{ # @_ ma argumenty funkcji
	print "dodaj: ilość parametrów=", scalar @_, "->  @_[0] @_[1]\n";
	foreach $el (@_) {
		print "arg -> $el\n";
	}
	return @_[0]+@_[1];
}

sub echo
{
	state $count=0;
	$e=@_[0];
	print "echo e=$e count=$count\n"; 
	$e--;
	$count++;	
	if ($e > 0) {echo($e); }
}

sub pokaz
{
	print "pokaz: private=$private loc=$loc\n";
}

sub zwieksz
{	
	foreach $el (@_) {
		print "zwieksz: arg -> $el\n";
	}
	my $private=@_[0];
	local $loc=@_[0];

	@_[0]++;
	@_[1]++;

	foreach $el (@_) {
		print "zwiekszone: arg -> $el\n";
	}
	print "zwieksz private=$private\n";
	pokaz();
}

hello();

$a=2;
$b=3;

print "$a + $b =", dodaj($a, $b), "\n",;
echo(10);

sub lista {
	my @l=@_; # local variable
	print "lista: parametry: @l\n";
}
lista(10, (1,2,3,4));

sub hash_tab {
	my %h = @_;
	foreach my $key (keys %h) {
		print "key=$key value=$h{$key}\n";
	}
}

%h=('klucz' => 'value', 'k1' => 10);
hash_tab(%h);


$operacja=\&dodaj;
print "wynik operacji na $a i $b=", &$operacja($a,$b), "\n";

print "a = $a b=$b\n";
zwieksz($a, $b);
print "a po zwiekszeniu= $a\n";
print "b po zwiekszeniu= $b\n";
print "global private=$private loc=$loc\n";

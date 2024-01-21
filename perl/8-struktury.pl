#!/bin/perl

%volvo=( 
	'marka' => 'volvo v40', 
	'rok_produkcji' => 2010);

sub pokaz
{
	my (%h) = @_;
	print "marka: $h{'marka'}\n";
	print "rok produkcji: $h{'rok_produkcji'}\n";

}

sub hash_tab 
{
	my %h = @_;
	foreach my $key (keys %h) {
		print "key=$key value=$h{$key}\n";
	}
}


pokaz(%volvo);
hash_tab(%volvo);

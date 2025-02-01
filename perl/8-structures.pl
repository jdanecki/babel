#!/bin/perl

%volvo=( 
	'brand' => 'volvo v40', 
	'year_of_production' => 2010);

sub show
{
	my (%h) = @_;
	print "brand: $h{'brand'}\n";
	print "year of production: $h{'year_of_production'}\n";

}

sub hash_tab 
{
	my %h = @_;
	foreach my $key (keys %h) {
		print "key=$key value=$h{$key}\n";
	}
}


show(%volvo);
hash_tab(%volvo);

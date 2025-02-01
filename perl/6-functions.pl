#!/bin/perl

use feature 'state';

sub hello {
	print "hello";
}
sub add
{ # @_ has function arguments
    print "add: number of parameters=", scalar @_, "->  @_[0] @_[1]\n";
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
}sub show
{
    print "show: private=$private loc=$loc\n";
}

sub increment
{	
    foreach $el (@_) {
        print "increment: arg -> $el\n";
    }
    my $private=@_[0];
    local $loc=@_[0];

    @_[0]++;
    @_[1]++;

    foreach $el (@_) {
        print "incremented: arg -> $el\n";
    }
    print "increment private=$private\n";
    show();
}
hello();

$a=2;
$b=3;
print "$a + $b =", add($a, $b), "\n",;
echo(10);

sub list {
    my @l=@_; # local variable
    print "list: parameters: @l\n";
}
list(10, (1,2,3,4));

sub hash_table {
    my %h = @_;
    foreach my $key (keys %h) {
        print "key=$key value=$h{$key}\n";
    }
}

%h=('key' => 'value', 'k1' => 10);
hash_table(%h);

$operation=\&add;
print "result of operation on $a and $b=", &$operation($a,$b), "\n";

print "a = $a b=$b\n";
increment($a, $b);
print "a after increment= $a\n";
print "b after increment= $b\n";
print "global private=$private loc=$loc\n";
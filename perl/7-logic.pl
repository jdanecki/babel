#!/bin/perl
sub product
{
    $a=@_[0];
    $b=@_[1];
    print "product $a && $b =",  ($a && $b);
    print "\n";
    print "product $a and $b =", ($a and $b);
    print "\n";
}

sub sum
{
    $a=@_[0];
    $b=@_[1];
    
    print "sum $a or $b =",  ($a or $b);
    print "\n";
    print "sum $a || $b =",  ($a || $b);
    print "\n";
}

sub show_bool
{
    if (@_[1]) {
        print "@_[0] is true\n";
    }
    else {
        print "@_[0] is false\n";
    }
}

}
sub negation
{
    $a=@_[0];
    $b=(not $a);
    $c=($b and $b);
    $d=$b and $b;
    
    show_bool("a", $a);
    show_bool("b", $b);
    show_bool("c", $c);
    show_bool("d", $d);
    show_bool("negation $a =", $b);
}
	
}

$zero=0;
$one=1;

product($zero, $zero);
product($zero, $one);
product($one, $zero);
product($one, $one);

sum($zero, $zero);
sum($zero, $one);
sum($one, $zero);
sum($one, $one);

negation($zero);
negation($one);

$a=3;
$b=1;
$c=2;

print "product: $a & $b =", $a & $b, "\n";
print "sum: $a | $b =", $a | $b, "\n";
print "sum modulo 2: $a ^ $b =", $a ^ $b, "\n";
print "negation ~$b =", (~b) & 255 ,"\n";
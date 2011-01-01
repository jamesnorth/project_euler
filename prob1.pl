#!perl

# Project Euler - Problem 1

my $range = 1000;
my $i = 0;
my $acc = 0;

for( $i = 1; $i < $range; $i++ ) {
	if (($i % 3) == 0 or ($i % 5) == 0) {
		$acc += $i;
	}
}

print "The answer is $acc\n";


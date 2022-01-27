#!/usr/bin/perl
# Write a one-liner to solve the FizzBuzz problem and print the numbers 1 
# through 20. However, any number divisible by 3 should be replaced by the word
# fizz and any divisible by 5 by the word buzz. Those numbers that are both 
# divisible by 3 and 5 become fizzbuzz
#
use strict;
use warnings;
my @array = ( 1..20 );
foreach (@array) {
	if ( $_%3 == 0 && $_%5 == 0 ) { print "fizzbuzz "; next; }
	elsif ( $_%3 == 0 ) { print "fizz "; next }
	elsif ( $_%5 == 0 ) { print "buzz "; next }
	else { print $_; print " "; };
}
print "\n";;

# oneliner
# perl -e 'foreach (1..20) { if ($_%3 == 0 && $_%5 == 0) {print "fizzbuzz "} elsif ($_%3 == 0) {print "fizz "} elsif ($_%3 == 0) {print "fizz "} elsif ($_%5 == 0) {print "fuzz "} else {print $_," " } }'

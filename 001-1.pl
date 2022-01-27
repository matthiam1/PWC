#!/usr/bin/perl
#Write a script to replace the character ‘e’ with ‘E’ in the string 
#	‘Perl Weekly Challenge’. Also print the number of times the character 
#	‘e’ is found in the string.
use strict;
use warnings;
my $string = "Perl Weekly Challenge";
my $new = $string;
$new =~ s/e/E/g ;
print $new,"\n";

my @chars = split('', $string);
my $counter = 0;
foreach (@chars) {
	if ( $_ eq "e" || $_ eq "E" ) {
		$counter++;
	}
}
print $counter,"\n";
	

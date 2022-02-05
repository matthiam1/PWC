#!/usr/bin/perl
# Create a script that generates Pascal Triangle. 
# Accept number of rows from the command line. 
# The Pascal Triangle should have at least 3 rows. 
# For more information about Pascal Triangle, check this wikipedia page.

use strict; use warnings; use 5.010;
use Data::Dumper;
my $r = shift || 3;

#0 # 1
#1 # 1 1
#2 # 1 2 1
#3 # 1 3 3 1
#4 # 1 4 6 4 1

my %out = ( 0 => [1] , 1 => [1,1] , 2 => [1,2,1] );

my $i = 3 ;
my @b ;

for my $i ( 3..$r-1 ) {
        $b[0] = 1;
        $b[$i] = 1;
        for my $x ( 1..$i-1 ) {
                $b[$x] = $out{$i-1}[$x-1] + $out{$i-1}[$x];
                }
        $out{$i} = [@b];
}

for my $row ( sort {$a <=> $b } keys %out ) {
        say $row, ": ",  join ' ', @{$out{$row}}  ;
}

#print Dumper \%out;


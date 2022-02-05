#!/usr/bin/perl
use strict; use warnings; use 5.010;
#Create a script to generate 5-smooth numbers, whose prime divisors 
#are less or equal to 5. They are also called Hamming/Regular/Ugly numbers. 
#For more information, please check this wikipedia.

my $arg = shift || 100;
my $in = 0;

while ($in <= $arg) {
  my @czynniki;                                             
  my $inp = $in;                           
  while ($inp gt 1) {     
        if ($inp % 2 eq 0) {                                         
                push @czynniki, 2;                 
                $inp = $inp / 2; 
        } elsif ($inp % 3 eq 0) {                                             
                push @czynniki, 3;                          
                $inp = $inp / 3;          
        } elsif ($inp % 5 eq 0) {
                push @czynniki, 5;                                   
                $inp = $inp / 5;                   
        } else {                 
                @czynniki = undef;                                            
		last;
        }                                                   
  }                                       
  if (defined($czynniki[0])) {
	print "czynniki dla ", $in, " to ", join(',', @czynniki), "\n";
  }
  $in++;
}

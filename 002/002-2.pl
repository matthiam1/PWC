#!/usr/bin/perl
use strict; use warnings;
use Data::Dumper;

my $input = shift @ARGV // die "Give a number.\n";
my @chars = ((0 .. 9),('a' .. 'y'));

sub validate {
  if ( $_[0] =~ m/[^0-9a-y]/) { 
    die "Not a valid input.\n";
  }
}

sub base35_to_int {
  my @x = split //, $_[0];                                                      
  my $length = scalar @x;                                                      
  my $i = $length - 1;                                                            
  my $sum;                                                                        
  foreach my $char (@x) {                                                      
    if ( $char =~ m/\d/ ) {                                                 
      foreach my $index ( 0 .. 9 ) {                                  
        if ( $char == $chars[$index] ) {                        
          $sum += $index*35**$i;                          
          $i--;                                           
        }
      }                                                                              
    } elsif ( $char =~ m/[a-y]/ ) {                                                                
      foreach my $index ( 10 .. $#chars ) {                           
        if ( $char eq $chars[$index] ) {                        
          $sum += $index*35**$i;                          
          $i--;                
        }                            
      }
    } else {
      
    }
  }
  return($sum);
}

sub int_to_base35 {
  my $in = $_[0];
  my $conv;
  my @x;
  if ( $in == 0 ) {
    return(0);  
  } elsif ( $in !~ /\D/) {
    while ( $in >= 1) {
      my $rest = $in % 35;
      $in = int ($in / 35); 
      #print $int, " ", $rest, "\n";
      $conv = $chars[$rest];
      unshift @x, $conv;
    }
    return(@x);
  } else {
    return("$in is not valid base10 number.");
  }
}

validate($input); 
print $input, " in base10 is: ", base35_to_int($input), "\n"; 
print $input, " in base35 is: ", int_to_base35($input), "\n";


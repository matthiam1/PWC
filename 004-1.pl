#!/usr/bin/perl
use strict; use warnings; use 5.010;
#Write a script to output the same number of PI digits as the size of your script. 
#Say, if your script size is 10, it should print 3.141592653.
#################################################################################

use bignum "bpi";
my $size = `stat -c %s $0`;
print bpi($size);


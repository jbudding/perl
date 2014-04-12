#/!usr/bin/perl -w
 
use 5.018;
use utf8;
use strict;

# assign list contents separated, and wrapped
# in double quotes to the @week array.
@week = qw( mon tue wed thu fri sat sun );
 
# user defined functions are called subroutines in perl,
# define a subroutine
sub arrayCycle {
  
  # create a locally scoped array called "array"
  my(@array);
 
  # params passed to subroutines are stored in a locally scoped,
  # list-context variable -- aka array -- called '@_' by default.
  
  # assign the contents '@_' to '@array'
  @array = @_;
  
  
  # '$element' is an instance variable,
  #  the current index of '@array' is assigned to the '$element' variable
  #  each time the block runs.
  foreach $element (@array) {
    
    # add a newline character to the end of '$element'
    print $element . "\n";
    
  }
    
}
 
arrayCycle(@week);

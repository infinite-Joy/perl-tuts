use strict;
firstSub( 10, ("A".."E") );



sub firstSub {
    my($ref_firstArray, @ref_secondArray) = @_ ;
    
    print "The first array is  @{$ref_firstArray}.\n"
        if(ref(\$ref_firstArray) eq "ARRAY");             # One

    print "The second array is @ref_secondArray.\n"
        if(ref(\@ref_secondArray) eq "ARRAY");            # Two
}

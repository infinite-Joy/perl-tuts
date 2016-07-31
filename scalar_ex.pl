#!/usr/bin/perl -w

@a = (1,2,3,4);
@b = (10,20,30,40);

@c = ( @a, @b );
print "1 - Final Array is @c\n";

@c = ( scalar(@a), scalar(@b) );
print "2 - Final Array is @c\n";

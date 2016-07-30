#!/usr/bin/perl
#use strict;
#use warnings;
#use diagnostics;

use Benchmark qw/cmpthese timethese/;


my $count = shift || die "Need a count!\n";

## Create a dummy list of 1000 random 6 letter words
my @words = ();
my @temp = ();
srand();
for (1..1000) {
  push(@words,
    chr(rand(26)+65) . chr(rand(26)+65) . chr(rand(26)+65) .
    chr(rand(26)+65) . chr(rand(26)+65) . chr(rand(26)+65));
}

## Method number one - a numeric sort
sub One {
  @temp = sort {$a <=> $b} @words;
}

## Method number two - an alphabetic sort
sub Two {
  @temp = sort {$a cmp $b} @words;
}

## We'll test each one, with simple labels
timethese (
  $count,
  {'Method One' => '&One',
   'Method Two' => '&Two'}
);

exit;


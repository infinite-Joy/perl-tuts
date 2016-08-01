# creating an empty hash
my %color_of;

# inserting key value pairs
$color_of{apple} = 'red'; # apple is the key and not the var

# fetch an element
print $color_of{orange};

# initialise a hash with values
my %color_of = (
    apple  => "red",
    orange => "orange",
    grape  => "purple",
);


# iterATING Over hashes
for my $fruit (keys %color_of) {
    print "The color of '$fruit' is $color_of{$fruit}\n";
}

# size of the hash
print scalar keys %hash;

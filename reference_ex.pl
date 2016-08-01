sub fruit_i_like() {
    my @fruit = ('apple', 'banana', 'orange');
    return \@fruit; # retrun the reference
}

my $fruit = fruit_i_like();
print "@{$fruit}\n";  # dereference

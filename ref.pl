$scalar = 10;

@array  = (1, 2);

%hash   = ( "1" => "Davy Jones" );

# I added extra spaces around the parameter list

# so that the backslashes are easier to see.

printRef( $scalar, @array, %hash );

printRef( \$scalar, \@array, \%hash );

printRef( \&printRef, \\$scalar );


# print the reference type of every parameter.

sub printRef {

    foreach (@_) {

        $refType = ref($_);

        defined($refType) ? print "$refType " : print("Non-reference ");

    }

    print("\n");

}

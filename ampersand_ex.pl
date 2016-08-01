# apmersand example

sub eye {
    &new_identity(@_);
}

sub new_identity { print "Args infoo are: @_\n"; }

eye(1, 2, 3);

package Banana1;

use Time::Local;
use Carp;

sub new {
    my ($class,$d,$m,$y,$paid,$q) = @_;
    my %info;
    $info{"date"} = timegm(0,0,12,$d,$m,$y);
    $info{"paid"} = $paid;
    $info{"quantity"} = $q;
    bless \%info,$class;
}

sub getpriceeach {
    my ($which) = @_;
    # Validate the call!

    # Report where it is CALLED from!

    # Is it called on the right type of object?
    # If not, abort program with full stack trace
    if (ref($which) ne "Banana1") {
        confess "getpriceeach needs ref to Banana1";
    }
    # Is it called without params?
    # If extra params given, warn but carry on
    # (use 'croak' if you want to die)
    if ($#_ != 0) {
        carp "Parameter(s) ignored";
    }
    $which->{"paid"} / $which->{"quantity"};
}

1;

# Test program

$sept = new Banana1 (7,9,2010,1.60,8);
$oct = Banana1::new("Banana1",14,10,2010,1.75,9);
$nov = Banana1::new("Banana1",5,11,2010,1.80,8);

print ("$sept ... $oct ... $nov \n");

$p1 = $sept -> getpriceeach();
$p2 = $oct -> getpriceeach("yellow");
$p3 = Banana1::getpriceeach($nov);

print "Prices are $p1 $p2 and $p3\n";

# Test the error handler - should crash

$p2 = Banana1::getpriceeach("hhh");
print "Prices are $p1 $p2 and $p3\n";

__END__

bash-4.2$ perl error_handling_ex.pl
Banana1=HASH(0x20073778) ... Banana1=HASH(0x2008d7f8) ... Banana1=HASH(0x2008d848)
Parameter(s) ignored at error_handling_ex.pl line 29
        Banana1::getpriceeach('Banana1=HASH(0x2008d7f8)', 'yellow') called at error_handling_ex.pl line 46
Prices are 0.2 0.194444444444444 and 0.225
getpriceeach needs ref to Banana1 at error_handling_ex.pl line 23
        Banana1::getpriceeach('hhh') called at error_handling_ex.pl line 53

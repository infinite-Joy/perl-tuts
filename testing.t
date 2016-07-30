use Test::More qw(no_plan);

$this = 1;
$that = 1;
is($this, $that,    $test_name);
isnt($this, $that,    $test_name);

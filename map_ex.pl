# simple use of map
my @numbers = (1..5);
print "@numbers\n";       # 1 2 3 4 5
my @doubles = map {$_ * 2} @numbers;
print "@doubles\n";       # 2 4 6 8 10


# Schwartzian transform
my @quickly_sorted_files =
    map  { $_->[0] }
    sort { $a->[1] <=> $b->[1] }
    map  { [$_, -s $_] }
    @files;


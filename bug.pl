my %hash = (
    'a' => 1,
    'b' => 2,
    'c' => 3
);

while (my ($key, $value) = each %hash) {
    print "Key: $key, Value: $value\n";
    delete $hash{$key}; # Delete the element after accessing it
}

Instead of deleting elements during iteration, it's better to collect the keys to be deleted in an array and delete them afterward.  Alternatively, iterate over a copy of the hash.

my %hash = (
    'a' => 1,
    'b' => 2,
    'c' => 3
);

my @keys_to_delete;
while (my ($key, $value) = each %hash) {
    print "Key: $key, Value: $value\n";
    push @keys_to_delete, $key; # Store keys to delete later
}

foreach my $key (@keys_to_delete) {
    delete $hash{$key};
}

#Alternative using a copy of the hash
my %hash_copy = %hash;
foreach my $key (keys %hash_copy) {
    print "Key: $key, Value: $hash_copy{$key}\n";
    delete $hash{$key};
}

package Bencher::Scenario::DataDmp;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark Data::Dmp',
    participants => [
        {name => 'Data::Dmp', fcall_template => 'Data::Dmp::dmp(<data>)'},
        {module => 'Data::Dump', code_template => 'my $dummy = Data::Dump::dump(<data>)'},
    ],
    datasets => [
        {
            name => 'a100-num-various',
            args => { data => [ (0, 1, -1, "+1", 1e100,
                                 -1e-100, "0123", "Inf", "-Inf", "NaN") x 10 ] },
        },
        {
            name => 'a100-num-int',
            args => { data => [ 1..100 ] },
        },
        {
            name => 'a100-str',
            args => { data => [ "a" x 100 ] },
        },
    ],
};

# ABSTRACT:

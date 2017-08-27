package Bencher::Scenario::DateModules::DurationCreation;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark duration creation',
    participants => [
        {
            name => 'DateTime::Duration->new',
            fcall_template => 'DateTime::Duration->new(months=>1, days=>2, minutes=>3, seconds=>4, nanoseconds=>5)',
        },
    ],
    with_result_size => 1,
};

1;
# ABSTRACT:

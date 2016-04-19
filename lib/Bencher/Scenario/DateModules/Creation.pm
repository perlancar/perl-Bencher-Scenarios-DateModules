package Bencher::Scenario::DateModules::Creation;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark date creation',
    participants => [
        {
            name => 'DateTime->new(ymd)',
            fcall_template => 'DateTime->new(year=>2016, month=>4, day=>19)',
        },
        {
            name => 'DateTime->now',
            fcall_template => 'DateTime->now',
        },

        {
            name => 'Time::Moment->new(ymd)',
            fcall_template => 'Time::Moment->new(year=>2016, month=>4, day=>19)',
        },
        {
            name => 'Time::Moment->now',
            fcall_template => 'Time::Moment->now',
        },

        {
            name => 'Time::Local::timelocal',
            fcall_template => 'Time::Local::timelocal(0, 0, 0, 19, 4-1, 2016-1900)',
        },

        {
            name => 'Time::Piece::localtime',
            fcall_template => 'Time::Piece::localtime()',
        },
    ],
    include_result_size => 1,
    datasets => [
    ],
};

1;
# ABSTRACT:

=head1 BENCHMARK NOTES

Time::Moment is the fastest. It also produces a very compact object (second only
to Time::Local, which produces ints). In comparison, DateTime is relatively
crazy big.
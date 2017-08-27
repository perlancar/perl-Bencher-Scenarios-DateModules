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
            name => 'DateTime::Tiny->new(ymd)',
            fcall_template => 'DateTime::Tiny->new(year=>2016, month=>4, day=>19)',
        },
        {
            name => 'DateTime::Tiny->now',
            fcall_template => 'DateTime::Tiny->now',
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
    with_result_size => 1,
};

1;
# ABSTRACT:

=head1 BENCHMARK NOTES

Time::Moment is the fastest. It also produces a very compact object (second only
to Time::Local, which produces ints). In comparison, DateTime is relatively
crazy big.

DateTime::Tiny is an alternative for DateTime if you want smaller startup
overhead and dependencies. It also creates date objects faster. But the object
is still relatively large (a hash of date element fields).

package Bencher::Scenario::DateModules::Storage;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Measure memory storage usage of 1k date/duration objects/structures',
    precision => 1,
    participants => [
        {
            name => 'DateTime',
            module => 'DateTime',
            code_template => '[map {DateTime->new(year=>2016, month=>4, day=>19)} 1..1_000]',
        },
        {
            name => 'DateTime::Tiny',
            module => 'DateTime::Tiny',
            code_template => '[map {DateTime::Tiny->new(year=>2016, month=>4, day=>19)} 1..1_000]',
        },
        {
            name => 'Time::Moment',
            module => 'Time::Moment',
            code_template => '[map {Time::Moment->new(year=>2016, month=>4, day=>19)} 1..1_000]',
        },
        {
            name => 'Time::Local',
            module => 'Time::Local',
            code_template => '[map {Time::Local::timelocal(0, 0, 0, 19, 4-1, 2016-1900)} 1..1_000]',
        },
        {
            name => 'Time::Piece',
            module => 'Time::Piece',
            code_template => '[map {Time::Piece::localtime()} 1..1_000]',
        },

        {
            name => 'DateTime::Duration',
            module => 'DateTime::Duration',
            code_template => '[map {DateTime::Duration->new(months=>1, days=>2, minutes=>3, seconds=>4, nanoseconds=>5)} 1..1_000]',
        },

    ],

    with_result_size => 1,
};

1;
# ABSTRACT:

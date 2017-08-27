package Bencher::Scenario::DateModules::Overhead;

# DATE
# VERSION

use strict;
use warnings;

our $scenario = {
    summary => 'Overhead of date/duration modules',
    module_startup => 1,
    participants => [
        {module => 'DateTime'},
        {module => 'DateTime::Duration'},
        {module => 'DateTime::Tiny'},
        {module => 'Time::Moment'},
        {module => 'Time::Local'},
        {module => 'Time::Piece'},
    ],
};

1;
# ABSTRACT:

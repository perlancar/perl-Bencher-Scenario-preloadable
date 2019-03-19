package Bencher::Scenario::preloadable;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use B::Hooks::AtRuntime;

our $scenario = {
    summary => 'Benchmark preloadable.pm',
    participants => [
        {
            name => 'require',
            code_template => 'require strict',
        },
        {
            name => 'preloadable',
            code => sub { use preloadable "strict" },
        },
    ],
};

1;
# ABSTRACT:

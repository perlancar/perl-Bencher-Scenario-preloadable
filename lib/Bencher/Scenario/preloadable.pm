package Bencher::Scenario::preloadable;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

sub _uses_require {
    require strict;
}

sub _uses_preloadable {
    use preloadable "strict";
}

our $scenario = {
    summary => 'Benchmark preloadable.pm',
    participants => [
        {
            name => 'require',
            fcall_template => "Bencher::Scenario::preloadable::_uses_require",
        },
        {
            name => 'preloadable',
            fcall_template => "Bencher::Scenario::preloadable::_uses_preloadable",
        },
    ],
};

1;
# ABSTRACT:

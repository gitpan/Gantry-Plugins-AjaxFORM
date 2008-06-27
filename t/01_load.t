use strict;
use Test::More ;

my @modules = qw(Gantry::Plugins::AjaxFORM);

plan(tests => scalar(@modules));

use_ok($_) for @modules;

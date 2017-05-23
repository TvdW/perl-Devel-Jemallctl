#!perl -T
use 5.010;
use strict;
use warnings;
use Test::More;

plan tests => 1;

BEGIN {
    use_ok( 'Devel::JemallInfo' ) || print "Bail out!\n";
}

diag( "Testing Devel::JemallInfo $Devel::JemallInfo::VERSION, Perl $], $^X" );

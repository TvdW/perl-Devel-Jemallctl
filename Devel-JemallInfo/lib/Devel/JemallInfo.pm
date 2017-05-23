package Devel::JemallInfo;

use 5.010;
use strict;
use warnings;
use XSLoader;

our $VERSION = '0.01';
XSLoader::load("Devel::JemallInfo", $VERSION);


=head1 NAME

Devel::JemallInfo - Insight into what Jemalloc is doing

=head1 SYNOPSIS

Basically, C<Devel::MallInfo> for Jemalloc.

    use Devel::JemallInfo;

    my $stats = Devel::JemallInfo::refresh_and_get_stats;
    printf "Current allocated/active/metadata/resident/mapped: %d/%d/%d/%d/%d",
        @$stats{qw/allocated active metadata resident mapped/};

Requires a jemalloc compiled with C<--enable-stats>.

=head1 DESCRIPTION

glibc uses C<mallinfo> for exporting statistics, jemalloc has its own C<mallctl>,
which means that C<Devel::MallInfo> is useless when using jemalloc. This module
aims to cover the same use case: finding out how much memory a Perl process is using.

Hopefully in the future more mallctl options will be added, allowing for actual
configuration of jemalloc in addition to getting statistics out.

=head1 AUTHOR

Tom van der Woerdt, C<< <tvdw@cpan.org> >>

=head1 LICENSE AND COPYRIGHT

Copyright 2017 Tom van der Woerdt.

Full license see C<README>

=cut

1;

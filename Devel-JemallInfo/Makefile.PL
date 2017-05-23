use 5.010;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME             => 'Devel::JemallInfo',
    AUTHOR           => q{Tom van der Woerdt <info@tvdw.eu>},
    VERSION_FROM     => 'lib/Devel/JemallInfo.pm',
    ABSTRACT_FROM    => 'lib/Devel/JemallInfo.pm',
    LICENSE          => 'artistic_2',
    PL_FILES         => {},
    LIBS             => ['-ljemalloc'],
    MIN_PERL_VERSION => 5.010,
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 0,
    },
    BUILD_REQUIRES => {
        'Test::More' => 0,
    },
    PREREQ_PM => {
        #'ABC'              => 1.6,
        #'Foo::Bar::Module' => 5.0401,
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'Devel-JemallInfo-*' },
);

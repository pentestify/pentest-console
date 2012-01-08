# -*- perl -*-

# t/001_load.t - check module loading and create testing directory

use Test::More qw(no_plan);

BEGIN { use_ok( 'Parse::Nessus::XML' ); }

my $scan = Parse::Nessus::XML->new('t/sample.xml');
isa_ok ($scan, 'Parse::Nessus::XML');


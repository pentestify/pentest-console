# -*- perl -*-

# t/001_load.t - check module loading and create testing directory

use Test::More qw(no_plan);

BEGIN { use_ok( 'Parse::Nessus::XML' ); }

my $scan = Parse::Nessus::XML->new('t/sample.xml');
isa_ok ($scan, 'Parse::Nessus::XML');

my $results = $scan->results;
is(ref $results, 'ARRAY', 'Returns listref');

my @results = $scan->results;
is(scalar @results, 8, 'There are 8 results in the sample file');

my $plugin = $scan->plugin(10964);
is($plugin->name, 'Windows Debugger flaw can Lead to Elevated Privileges (Q320206)', 'Plugin name');
is($plugin->risk, 'High', 'Risk');


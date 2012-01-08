package Parse::Nessus::XML;
use strict;
use XML::Simple qw();

use vars qw($VERSION);
$VERSION = (qw($Revision: 1.14 $))[1];

# Documentation {{{

=head1 NAME

Parse::Nessus::XML - Interface to Nessus XML result files

=head1 SYNOPSIS

  use Parse::Nessus::XML
  my $scan = Parse::Nessus::XML->new( $filename );
  my @results = $scan->results;

  my $plugin  = $scan->plugin(10964); # Parse::Nessus::XML::Plugin object
  my $name    = $plugin->name;

=head1 DESCRIPTION

Provides an interface to the Nessus XML report file. This is primarily
for my own use, so if it's missing stuff that you think should be in
here, send me a patch.

Please note that this API is just a suggestion, and is subject to change
in the first few releases. Because of how deeply nested the data
structure is, there's no particularly nice API to the whole thing - at
least that I can think of. See the example script in the example/
subdirectory to see how I use this in real life.

=cut

# }}}

# sub new {{{

=head2 new

  my $scan = Parse::Nessus::XML->new( $filename );

Given the path to a file, returns a Parse::Nessus::XML object.

=cut

sub new {
    my ( $class, $file ) = @_;
    @XML::Simple::DefKeyAttr = qw(id);
    my $scan = XML::Simple::XMLin(
        $file,
        KeyAttr => {
            plugin => 'id',
            ports  => 'portid'
        },
    );

    my $self = bless( $scan, ref($class) || $class );
    return ($self);
} # }}}

# sub results {{{

=head2 results

    my $results = $scan->results; # listref
    my @results = $scan->results; # list

=cut

sub results {
    my $self = shift;
    return wantarray ? @{ $self->{results}->{result} } 
                     : $self->{results}->{result};
} # }}}

# sub plugin {{{

=head2 plugin

Returns a plugin object, given the ID. Then you can call for attributes
off of that object.

  my $plugin = $scan->plugin(10964);
  $name = $plugin->name;
  $risk = $plugin->risk;

=cut

sub plugin {
    my $scan = shift;
    my $ID = shift;

    return unless $ID;
    return Parse::Nessus::XML::Plugin->new( $scan, ID => $ID );
} # }}}

1;

# Parse::Nessus::XML::Plugin {{{

=head2 package Parse::Nessus::XML::Plugin

Supplementary package which facilitates figuring out what's in a
particular plugin. Also allows location of a plugin by ID number, which
speeds things up.

=cut

package Parse::Nessus::XML::Plugin;
use vars qw($AUTOLOAD);

=head2 Parse::Nessus::XML::Plugin->new

  my $plugin = Parse::Nessus::XML::Plugin->new( $scan, ID => 10964 );
  my $risk = $plugin->risk;

Available attributes are: id, name, version, family, cve_id, bugtraq_id,
category, risk, summary, copyright

=cut

sub new {
    my $class = shift;
    my $self = {};

    my $scan = shift;
    my %attribs = @_;

    if ($attribs{ID}) {
        $self = $scan->{plugins}{plugin}{$attribs{ID}};
        $self->{id} = $attribs{ID};
    } else {
        warn "No ID given, so I don't know what plugin you wanted.";
    }

    bless $self, $class;
    return $self;
}

sub AUTOLOAD {
    my $self = shift;
    my $attrib = $AUTOLOAD;
    $attrib =~ s/.*:://;
    return $self->{$attrib} || undef;
}

1;

# End package }}}

=head1 AUTHOR

    Rich Bowen
    CPAN ID: RBOW
    rbowen@rcbowen.com
    http://rich.rcbowen.com/

=head1 COPYRIGHT

This program is free software; you can redistribute
it and/or modify it under the same terms as Perl itself.

The full text of the license can be found in the
LICENSE file included with this module.

=head1 SEE ALSO

Parse::Nessus::NBE

=cut


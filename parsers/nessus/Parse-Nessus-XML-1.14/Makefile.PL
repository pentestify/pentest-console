use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME         => 'Parse::Nessus::XML',
    VERSION_FROM => 'lib/Parse/Nessus/XML.pm', # finds $VERSION
    AUTHOR       => 'Rich Bowen (rbowen@rcbowen.com)',
    ABSTRACT     => 'Interface to Nessus XML reuslt files',
    PREREQ_PM    => {
                     'Test::Simple' => 0.44,
                     'XML::Simple'  => 0,
                    },
);

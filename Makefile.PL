
use strict;
use warnings;



use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => ''
                                 },
                       'NAME' => 'Foo',
                       'DISTNAME' => 'Foo',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.11'
                                               },
                       'AUTHOR' => 'foobar',
                       'BUILD_REQUIRES' => {},
                       'ABSTRACT' => 'Test Library',
                       'EXE_FILES' => [],
                       'VERSION' => '1.23',
                       'PREREQ_PM' => {},
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);




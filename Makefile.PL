use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
  NAME          => 'PDL::IO::XLSX',
  AUTHOR        => 'KMX <kmx@cpan.org>',
  VERSION_FROM  => 'lib/PDL/IO/XLSX.pm',
  ABSTRACT_FROM => 'lib/PDL/IO/XLSX.pm',
  LICENSE       => 'perl',
  PREREQ_PM     => {
        'PDL'                 => '2.006', # we need: unpdl
        'PDL::DateTime'       => 0,
        'Archive::Zip'        => 0,
        'XML::Parser::Expat'  => 0,
        'File::Temp'          => 0,
        'Scalar::Util'        => 0,
        'Exporter'            => '5.59',  # we need: use Exporter 'import';
  },
  BUILD_REQUIRES => {
        'PDL'                 => '2.006', # we need: unpdl
        'PDL::DateTime'       => 0,
        'Archive::Zip'        => 0,
        'XML::Parser::Expat'  => 0,
        'File::Temp'          => 0,
        'Scalar::Util'        => 0,
        'Exporter'            => '5.59',  # we need: use Exporter 'import';
        'Test::More'          => '0.88',  # we need: done_testing()
        'Test::Number::Delta' => '1.06',  # versions before 1.06 have buggy relative mode
  },
  META_MERGE => {
      resources    => {
        repository   => 'https://github.com/kmx/pdl-io-xlsx',
      },
  },
  dist => {
      ($^O eq 'MSWin32' ? (TAR => 'ptar', TARFLAGS => '-c -C -f') : ()),
      PREOP => 'perldoc -u lib/PDL/IO/XLSX.pm | pod2markdown > README.md',
  },
);

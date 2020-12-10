use 5.006;
use ExtUtils::MakeMaker;

my $EUMM_VERSION = $ExtUtils::MakeMaker::VERSION;
$EUMM_VERSION =~ s/_//g;

WriteMakefile(
    NAME         => 'FindBin',
    VERSION_FROM => 'lib/FindBin.pm',
    ( $] > 5.011 ) ? () : ( INSTALLDIRS => 'perl' ),    # CPAN sourced versions should now install to site
    PREREQ_PM => {
        'Exporter'       => '0',
        'Carp'           => '0',
        'Cwd'            => '0',
        'File::Basename' => '0',
        'File::Spec'     => '0',
    },
    ABSTRACT_FROM => 'lib/FindBin.pm',
    ( $EUMM_VERSION >= 6.31 ? ( LICENSE => 'perl' ) : () ),
    dist       => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    META_MERGE => {
        resources => {
            license     => 'http://dev.perl.org/licenses/',
            bugtracker  => 'https://github.com/Perl/perl5/issues',
            repository  => 'https://github.com/Perl/perl5/tree/blead/dist/FindBin',
            MailingList => 'http://lists.perl.org/list/perl5-porters.html',
        },
    },
);

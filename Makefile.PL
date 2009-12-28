use 5.005;
use strict;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
	NAME		=> 'webalizer-run',
	VERSION_FROM	=> 'bin/webalizer-run', # finds $VERSION
	PREREQ_PM	=> {}, # e.g., Module::Name => 1.1
	ABSTRACT	=> 'run a daemon that feeds Apache logs to webalizer',
	AUTHOR		=> 'Bernhard Graf <graf@movingtarget.de>',
	EXE_FILES	=> ['bin/webalizer-run', 'bin/webalizer-log'],
	MAN1PODS	=> {
		'bin/webalizer-run'	=> '$(INST_MAN1DIR)/webalizer-run.$(MAN1EXT)',
		'bin/webalizer-log.pod' => '$(INST_MAN1DIR)/webalizer-log.$(MAN1EXT)'
	},
);

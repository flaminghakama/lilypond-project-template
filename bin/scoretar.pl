#!/usr/bin/perl

#  scoretar.pl [ -one <archive name> ]? <score>*
 
#  If no <score> is supplied, archive everything
#  For each <score> supplied, archive each one as files_<score>.tgz
#  Or, if -one is specified, archive all the songs as <archive name>.tgz 
#  Remove any preexisting files of the names we are creating. 

use strict ;
use warnings ;

#  Prepare files for archiving
`mv *.pdf pdf` ;
`mv *.midi midi` ;
`rm */*~` ;

my $songName ; 
my $archiveName ; 

unless ( @ARGV ) {
	`rm files.tgz` ;
    `tar -cvzf files.tgz *` ;
}
else { 
    foreach $songName (@ARGV) {
    	$songName =~ s/^ly\/// ; 
    	$songName =~ s/\/$// ; 
    	$archiveName = "files-$songName.tgz" ;
     	`rm $archiveName` ;
    	`tar -cvzf $archiveName pdf/$songName* midi/$songName* ly/$songName/ html/$songName*` ; 
	}
}

print "ftpfh\n" ; 

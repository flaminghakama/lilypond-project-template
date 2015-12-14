#!/usr/bin/perl

#  cloneLilypondSongTemplate.PL <SONG> [ <INSTRUMENT-TRANSPOSITION> ]*
#
#  Invoke from the project directory, in which exists the ly/TEMPLATE directory structure and template files.
#
#  Example invocation:
#  cloneLilypondSongTemplate.pl a-night-in-tunisia Flute English-Horn-in-F Bass-Clarinet-in-Bb Clave Bass Rhythm Lead-Sheet 
#
#  Clones the template project within the ly directory to the named SONG.
#
#  There are two sets of things that happen, which correspond to parts and scores.
#
#  PARTS
#
#  Generally speaking, there is a one-to-one relationship for instruments to parts.
#  There are three related files that comprise a part: Part, Book and Instrument.
#    Part File.  This is a lilypond file that you can invoke and it will produce a pdf.  
#      References the standard libraries.
#      References the instrument file and the book file.  
#      Defines the music variables used in the book file, typically out of combinations of 
#      the music variables contained in the instrument file combined with the global functions. 
#    Book File.  This is a lilypond fragment that defines the lilypond book.
#      References music variables, which are defined in the part file before including the book file.
#    Instrument File.
#      Contains music definitions used in the part file, after including the instrument file.
#
#  SCORES
#
#  Generally speaking, there are several instruments in a score.
#    Book File.  There is one Book file for a score, which is based on its own template TEMPLATE/parts/SCORE.ly
#    Instrument Files.  There are no new instrument files for a score.  Scores uses the same instrument files as the parts.
#    Part File.  There is one Part file for the score.  It is based on the same part file as the parts.
#      However, the file is recomposed after all the parts files have been processed:
#        Save any version lines.
#        Save any include structures lines.
#        Insert include instrument lines from all instruments
#        Insert global music variable definitions for all instruments
#        Save any book include lines 
#      

#  For each PART specified ( <INSTRUMENT-TRANSPOSITION> ), three files are created: Part file, Book file and Instrument file.
#  Names
#  Part file <SONG>-<INSTRUMENT-TRANSPOSITION>.ly like octagon-arbiter-English-Horn-in-F.ly
#  Book file <INSTRUMENT-TRANSPOSITION>.ily like English-Horn-in-F.ily
#  Instrument variable name is instrumentName like englishHorn
#  Instrument file is instrumentName.ily like englishHorn.ily
#  Poet (how the part name is printed on the part) based on <INSTRUMENT-TRANSPOSITION> like English Horn in F

use strict ;
use warnings ;
# use File::NCopy ;
use File::Copy ;
use File::Slurp ; 

sub slurpFile {
        my ($fileName, $fileDescription) = @_ ; 
        local $/ = undef;
        open(FILE, "$fileName") or die "Couldn't open $fileDescription '$fileName': $!";
        binmode FILE;
        my $contents = <FILE>;
        close FILE;
        return $contents ; 
}

sub writeFile {
        my ($fileName, $fileDescription, $fileContents) = @_ ; 
        open(my $fh, '>', $fileName) or die "Could not open $fileDescription '$fileName' $!";
        print $fh $fileContents ; 
        close $fh;
}

sub getPartType {
        my ($fileName) = @_;
        my $partType = "Part" ; 
        if ( $fileName =~ /Score/ ) { 
                $partType = "Score" ; 
        } 
        if ( $fileName =~ /Lead/ ) { 
                $partType = "Score" ; 
        } 
        if ( $fileName =~ /Rhythm/ ) { 
                $partType = "Score" ; 
        } 
        return $partType ; 
}

sub isPart { 
        my ($fileName) = @_ ; 
        return getPartType($fileName) eq "Part" ; 
}

sub isScore { 
        my ($fileName) = @_ ; 
        return getPartType($fileName) eq "Score" ; 
}

sub convertPartNameToInstrumentName {
        my ($partName) = @_ ; 
        my $instrumentName ; 
        my $transposition ; 
        if ( $partName =~ /\-in\-\w*/ ) {
                ( $instrumentName, $transposition ) = ( $partName =~ /(.*)(\-in\-\w*)/ ) ;
        } else { 
                $instrumentName = $partName ;
        }
        return $instrumentName ; 
}

sub convertInstrumentNameToVariable {
        my ($instrumentName) = @_ ; 
        my @words = split('-', $instrumentName) ;
        my $word ;
        my $variableName = '' ;   
        foreach $word (@words) {
                if ($variableName eq '') {
                        $variableName = lc($word) ;  
                } else {
                        $variableName = $variableName . $word ; 
                }
        }
        return $variableName ; 
}

sub convertPartNameToPoet {
        my ($partName) = @_ ; 
        $partName =~ s/\-/ /g ;
        return $partName ; 
}

sub getMusicDefinitionsFromInstrument {
        my ($instrumentContents) = @_ ; 
        my $line ;
        my @globalMusicDefinitions ;  
        foreach $line ( split("\n", $instrumentContents) ) {
                next if $line =~ /include|version/ ; 
                push(@globalMusicDefinitions, $line) ; 
        }
        return @globalMusicDefinitions ; 
}

sub getVersionLineFromPart {
        my ($partContents) = @_ ; 
        my $line ;
        foreach $line ( split("\n", $partContents) ) {
                if ( $line =~ /version/ ) { 
                        return $line ; 
                }
        }
        return '' ;
}

sub getInstrumentIncludesFromPart {
        my ($partContents) = @_ ; 
        my $line ;
        my @instrumentIncludes ;  
        foreach $line ( split("\n", $partContents) ) {
                if ( ( $line =~ /include/ ) && ( $line =~ /instrument/ ) ) { 
                        push(@instrumentIncludes, $line) ; 
                }
        }
        return @instrumentIncludes ; 
}

sub getStructuresFromPart {
        my ($partContents) = @_ ; 
        my $line ;
        my @structureIncludes ;  
        foreach $line ( split("\n", $partContents) ) {
                if ( ( $line =~ /include/ ) && ( $line =~ /structure/ ) ) { 
                        push(@structureIncludes, $line) ; 
                }
        }
        return @structureIncludes ; 
}

sub getBookLineFromPart {
        my ($partContents) = @_ ; 
        my $line ;
        foreach $line ( split("\n", $partContents) ) {
                if ( $line =~ /\/books\// ) { 
                        return $line ; 
                }
        }
        return '' ;
}

#  Get the song name
my $song = shift(@ARGV) ; 
my $songDir = "ly/$song" ; 
my $templateDir = "ly/TEMPLATE" ; 

#  Copy the template directory for the song
# mkdir($songDir) or die "Could not mkdir lilypond song directory '$songDir': $!";
# my $cp = File::NCopy->new(recursive => 1);
# $cp->copy("$templateDir/*", $songDir) 
#        or die "Could not copy template directory '$templateDir' to lilypond song directory '$songD: $!";
`cp -R $templateDir $songDir` ;  

#  Make a copy of the sublime text project for the song and remove the template 
my $projectFile = "ly/$song/$song.sublime-project" ; 
my $projectTemplateFile = "ly/$song/SONG.sublime-project" ; 
my $fileDescription = "sublime text project file template" ; 
my $template = slurpFile($projectTemplateFile, $fileDescription) ; 
$template =~ s/SONG/$song/g ; 
writeFile($projectFile, $fileDescription, $template) ; 

#  Get the three templates
my $partTemplateFile = "ly/$song/parts/PART.ly" ;
my $partTemplate = slurpFile($partTemplateFile, "part template") ; 

my $bookPartTemplateFile = "ly/$song/books/BOOK.ily" ; 
my $bookPartTemplate = slurpFile($bookPartTemplateFile, "part book template") ; 

my $scoreBookTemplateFile = "ly/$song/books/SCORE.ily" ; 
my $scoreBookTemplate = slurpFile($scoreBookTemplateFile, "score book template") ; 

my $instrumentTemplateFile = "ly/$song/instruments/INSTRUMENT.ily" ; 
my $instrumentTemplate = slurpFile($instrumentTemplateFile, "instrument template") ; 

#  Process each part/score
my $partName ;
my @lilypondPartInvocation ; 
my $partFile ;
my @partNames ; 
my $partContents ;  
my @scoreNames ; 
my @parts ; 
my $instrumentName ; 
my $bookFile ; 
my $bookContents ; 
my $variableName = '' ; 
my $poet ; 
my $instrumentFile ; 
my $instrumentContents ; 
my @globalMusicDefinitions ; 
my @instrumentIncludes ; 
my @scoreContents ; 
foreach $partName (@ARGV){

        #  Prepare the invocation of the part file.
        push(@lilypondPartInvocation, "lilypond ly/$song/parts/$song-$partName.ly") ; 

        $poet = convertPartNameToPoet($partName) ; 

        #  Treat parts and scores differently

        if ( isScore($partName) ) {

                #  Save the name of the part file, which will be created once all the parts have been processed.
                push(@scoreNames, $partName) ; 

                #  Make the book file
                $bookFile = "ly/$song/books/$partName.ily" ; 
                $bookContents = $scoreBookTemplate ; 
                $bookContents =~ s/PART/$partName/g ; 
                $bookContents =~ s/POET/$poet/g ;  
                writeFile($bookFile, "score part file", $bookContents) ; 

        } else { 

                $instrumentName = convertPartNameToInstrumentName($partName) ; 
                $variableName = convertInstrumentNameToVariable($instrumentName) ; 

                #  Create the part file and update the part and song names

                $partFile = "ly/$song/parts/$song-$partName.ly" ; 
                $partContents = $partTemplate ; 
                push(@partNames, $partName) ; 
                $partContents =~ s/PART/$partName/g ; 
                $partContents =~ s/SONG/$song/g ; 

                #  Update the instrument name and collect the instrument includes
                $partContents =~ s/INSTRUMENT/$variableName/g ; 
                push(@instrumentIncludes, getInstrumentIncludesFromPart($partContents)) ; 
                writeFile($partFile, "part file", $partContents) ; 

                push(@globalMusicDefinitions, getMusicDefinitionsFromInstrument($partContents)) ; 

        	#  Make the book file

        	$bookFile = "ly/$song/books/$partName.ily" ; 
                $bookContents = $bookPartTemplate ; 
                $bookContents =~ s/PART/$partName/g ; 
                $bookContents =~ s/INSTRUMENT/$variableName/g  ; 
                $bookContents =~ s/POET/$poet/g ;  
                writeFile($bookFile, "book file for instrument $instrumentName", $bookContents) ; 

		# Make the instrument file

                $instrumentFile = "ly/$song/instruments/$variableName.ily" ;  
                $instrumentContents = $instrumentTemplate ; 

                $instrumentContents =~ s/INSTRUMENT/$variableName/g ;
                writeFile($instrumentFile, "instrument file $instrumentFile", $instrumentContents) ; 
        }
}


#  Now that we've gathered all the instrument parts, build the score parts

foreach $partName (@scoreNames){

        $partFile = "ly/$song/parts/$song-$partName.ly" ; 
        $partContents = $partTemplate ; 
        $partContents =~ s/PART/$partName/g ; 
        $partContents =~ s/SONG/$song/g ; 

        writeFile(
                $partFile, 
                "part file", 
                join("\n", 
                        getVersionLineFromPart($partContents),  
                        getStructuresFromPart($partContents), 
                        @instrumentIncludes,
                        @globalMusicDefinitions,
                        getBookLineFromPart($partContents)
                )
        ) ;  
}

#  Create the invocation script
my $invocationFile = "ly/$song/buildParts.sh" ;
writeFile($invocationFile, "shell script to create parts", join("\n", @lilypondPartInvocation)) ; 
chmod 0755, $invocationFile;

#  Remove the copied template files
unlink $projectTemplateFile ; 
unlink $partTemplateFile ; 
unlink $bookPartTemplateFile ; 
unlink $scoreBookTemplateFile ; 
unlink $instrumentTemplateFile ; 

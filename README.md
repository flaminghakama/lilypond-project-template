# lilypond-project-template

Clone a project template by specifying names for the song, the parts and scores.

INVOCATION

To create a new project, invoke the script bin/cloneLilypondSongTemplate.pl with the appropriate names
$ bin/cloneLilypondSongTemplate.PL &lt;SONG&gt; [ &lt;INSTRUMENT-TRANSPOSITION&gt; ]+

RESULTS

This results in a new project in the directory ly/SONG, based on the name you supplied
There is a Sublime Text project file ly/SONG/SONG.sublime-project
There are static files in ly/structures for common header, global song forms, chords and lyrics.
There are music files for each of the parts you specify like ly/music/INSTRUMENT.ily, which is where you enter music.
There are book files for each part and score in ly/books/&lt;INSTRUMENT-TRANSPOSITION&gt;.ily, which is where you modify page layout and titling.
There are part files in ly/parts/&lt;INSTRUMENT-TRANSPOSITION&gt;.ly, which are the files you supply when invoking lilypond to build each individual part.
You can build all the parts by running the script ly/SONG/buildParts.sh

There are additional static files in the template for staves and staffgroups. 
There are variations of staffgroups for transposed and concert
There are variations of staves for parts, scores and sound 

The distinction between a Part and a Score is on the basis of whether the part has more than one instrument in it.
This is indicated based on keywords in the the instrument names: Score, Lead or Rhythm.
Any such score part will be created with all other instruments defined within it, and it is up to you to delete the ones you don't need.

TEMPLATE

The template is a set of directories and files.
This is kept in the directory ly/TEMPLATE

There are various examlpes of templates in this archive, and generally speaking, you will copy one of them to ly/TEMPLATE before running bin/cloneLilypondSongTemplate.pl

ly/TEMPLATE/SONG.sublime-project
ly/TEMPLATE/books/BOOK.ily
ly/TEMPLATE/books/SCORE.ily
ly/TEMPLATE/books/MIDI.ily
ly/TEMPLATE/music/INSTRUMENT.ily
ly/TEMPLATE/parts/PART.ly
ly/TEMPLATE/structures/chords.ily
ly/TEMPLATE/structures/forms.ily
ly/TEMPLATE/structures/header.ily
ly/TEMPLATE/structures/lyrics.ily


And then there are static files included in the templates:

Context definitions intended to be included into each part (via the book template ly/TEMPLATE/books/BOOK.ily)
ly/TEMPLATE/parts/layout.ily 

Staff group definitions.  This is not exaustive, for example there are no Brass staff groups yet.  Also, these are static, so if you want to add or remove instruments from a staff group, you will need to edit these files.  
ly/TEMPLATE/staffgroups/concert/Woodwinds.ily
ly/TEMPLATE/staffgroups/concert/Voices.ily
ly/TEMPLATE/staffgroups/concert/Percussion.ily
ly/TEMPLATE/staffgroups/concert/Strings.ily
ly/TEMPLATE/staffgroups/transposed/Woodwinds.ily
ly/TEMPLATE/staffgroups/transposed/Voices.ily
ly/TEMPLATE/staffgroups/transposed/Percussion.ily
ly/TEMPLATE/staffgroups/transposed/Strings.ily

Staff definitions

ly/TEMPLATE/staves/parts/*.ily
ly/TEMPLATE/staves/scores/*.ily
ly/TEMPLATE/staves/sound/*.ily

There are at least 3 versions of a staff file for an instument, since the staff definition varies slightly depending on whether it is used in a part, in a score (PDF) or in a MIDI file.  For example, what varies may include the instrumentName and shortInstrumentName, and possibly transposition and clef.

For transposing instruments, there are also typically concert and transposed versions of the staff files.


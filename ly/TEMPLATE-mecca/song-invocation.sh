# Invocation:  for song in overature ellis always city evicted roof tired speculation america ; do ./ly/TEMPLATE-mecca/song-invocation.sh $song ; done

SONG=$1

TEMPLATE_DIR=ly/TEMPLATE
TEMPLATE_STRUCTURES=$TEMPLATE_DIR/structures

MECCA_DIR=ly/TEMPLATE-mecca
MECCA_STRUCTURES=$MECCA_DIR/structures


# Refresh the template
rm -fr $TEMPLATE_DIR
mkdir $TEMPLATE_DIR
cp -R $MECCA_DIR/* $TEMPLATE_DIR
rm $TEMPLATE_DIR/structures/*-*
rm $TEMPLATE_DIR/music/INSTRUMENT-*

# Copy the song-specific header and forms files 
cp $MECCA_STRUCTURES/header-$SONG.ily $TEMPLATE_STRUCTURES/header-$SONG.ily
cp $MECCA_STRUCTURES/forms-$SONG.ily $TEMPLATE_STRUCTURES/forms.ily

# Clone the forms file into a "clean" version that can be used for other purposes
CLEAN=$TEMPLATE_STRUCTURES/CLEAN.ily
cp $MECCA_STRUCTURES/forms-$SONG.ily $CLEAN

## remove RehearsalMark, \key, global
perl -p -i -e 's|.*RehearsalMark.*||g' $CLEAN
perl -p -i -e 's|.*\\key.*||g' $CLEAN
perl -p -i -e 's|.*global.*||g' $CLEAN
perl -p -i -e 's|.*numericTimeSignature.*||g' $CLEAN
perl -p -i -e 's|\\partial [\*\d]+||g' $CLEAN

## change markup to comments
perl -p -i -e 's|(\s*)\\mark [^"]*|$1% |g' $CLEAN

## change barlines 
perl -p -i -e 's/\\bar "\|\|"/||/g' $CLEAN
perl -p -i -e 's/\\bar "(.*)"/||/g' $CLEAN

## change tempo to comments
perl -p -i -e 's|\\tempo (.*)|\% $1|g' $CLEAN
perl -p -i -e 's|\\time (.*)|\% $1|g' $CLEAN


# Create the chords file from the clean file
CHORDS=$TEMPLATE_STRUCTURES/chords.ily
cp $MECCA_STRUCTURES/CHORDS-top.ily $CHORDS
cat $CLEAN >> $CHORDS
cat $MECCA_STRUCTURES/CHORDS-bottom.ily >> $CHORDS

## remove original variable definition
perl -p -i -e 's|.*structure.*||g' $CHORDS

## clean up empty lines
egrep -v '$^' $CHORDS > $CHORDS.tmp ; mv $CHORDS.tmp $CHORDS


# Create the Music file from the clean file
INSTRUMENT=$TEMPLATE_DIR/music/INSTRUMENT.ily
cat $MECCA_DIR/music/INSTRUMENT-top.ily > $INSTRUMENT
cat $CLEAN >> $INSTRUMENT

## remove original variable definition
perl -p -i -e 's|.*structure.*||g' $INSTRUMENT

## clean up empty lines
egrep -v '$^' $INSTRUMENT > $INSTRUMENT.tmp ; mv $INSTRUMENT.tmp $INSTRUMENT

## add the globals definition
cat $MECCA_DIR/music/INSTRUMENT-bottom.ily >> $INSTRUMENT



# Create the Lyrics file from the clean file
LYRICS=$TEMPLATE_STRUCTURES/lyrics.ily
cat $MECCA_STRUCTURES/LYRICS-top.ily > $LYRICS
cat $CLEAN >> $LYRICS
cat $MECCA_STRUCTURES/LYRICS-bottom.ily >> $LYRICS

## remove original variable definition
perl -p -i -e 's|.*structure.*||g' $LYRICS

## clean up empty lines
egrep -v '$^' $LYRICS > $LYRICS.tmp ; mv $LYRICS.tmp $LYRICS


# Remove the clean file and unused files
rm $CLEAN
rm $TEMPLATE_DIR/song-invocation.sh
rm $TEMPLATE_DIR/SONG.sublime-workspace

# Create the structure and move it to the scores repo
MECCA_PARTS="Clarinet-in-Bb Tenor-Saxophone-in-Bb Trumpet-in-Bb Voice Piano Bass Score-Transposed Score-Concert Condensed-Score"
./bin/cloneLilypondSongTemplate.pl $SONG $MECCA_PARTS
SCORES_DIR=/Users/elaine/git/scores/mecca/ly
mv ly/$SONG $SCORES_DIR
rm $SCORES_DIR/$SONG/SONG.sublime-project
rm $SCORES_DIR/$SONG/staves/*.ily

# Until the clone script updates staffgroups and staves, update them here
REGEXP="'s/SONG/"$SONG"/g'"
echo perl -p -i -e $REGEXP $SCORES_DIR/$SONG/staves/*/*.ily >> tweaks.sh 
echo perl -p -i -e $REGEXP $SCORES_DIR/$SONG/staffgroups/*/*.ily >> tweaks.sh


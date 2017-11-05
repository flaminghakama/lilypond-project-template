SONG=$1
cp ly/TEMPLATE-mecca/ly/structures/forms-$SONG.ily ly/TEMPLATE/ly/structures/forms.ily
cp ly/TEMPLATE-mecca/ly/structures/header-$SONG.ily ly/TEMPLATE/ly/structures/header.ily
./bin/cloneStructure.pl $SONG $MECCA_PARTS

# Clone the forms file and create chords
STRUCTURES=ly/TEMPLATE/ly/structures
CHORDS=$STRUCTURES/chords.ily
cp $STRUCTURES/forms-$SONG.ily $CHORDS

## remove RehearsalMark, \key
cp $CHORDS $CHORDS.bak
egrep -v 'RehearsalMark|\key' $CHORDS.bak > $CHORDS 

## change markup to comments
perl -p -i -e 's|(\s*)\\mark \\markup \\box|\% $1|g' $CHORDS

## change barlines 
perl -p -i -e 's|\bar "(.*)"|$1|g' $CHORDS
\bar "||"

## change definition
perl -p -i -e 's|structure|songChords|g' $CHORDS

## change tempo to comments
perl -p -i -e 's|\\tempo (.*)|\% $1|g' $CHORDS


# Clone the forms file and create line breaks
# Clone the forms file and create dynamics



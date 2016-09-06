\include "../../flaming-libs/flaming-chords.ily"

chordsForm = \chordmode { 
}

chordsSong = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    \tag SegmentOne { \chordsForm }
    \tag SegmentTwo { \chordsForm }
    \tag SegmentThree { \chordsForm }
    \tag SegmentFour { \chordsForm }
}

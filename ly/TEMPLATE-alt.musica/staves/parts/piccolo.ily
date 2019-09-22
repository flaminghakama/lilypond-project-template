        \new ChordNames \transpose c c { \chordsPart }
        \new Staff = "piccolo" { 
            \include "ly/rising/staves/parts/staff-defaults.ily"
            \clef treble
            \transpose c c { \piccoloGlobal }
        }
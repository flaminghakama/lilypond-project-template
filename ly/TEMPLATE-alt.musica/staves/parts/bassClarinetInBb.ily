        \new ChordNames \transpose bf c { \chordsPart }
        \new Staff = "bassClarinet" { 
            \include "ly/rising/staves/parts/staff-defaults.ily"
            \clef treble
            \transpose bf,, c { 
            	\bassClarinetGlobal
            }
        }
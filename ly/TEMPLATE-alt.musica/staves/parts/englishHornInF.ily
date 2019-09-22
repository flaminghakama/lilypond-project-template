        \new ChordNames \transpose f c { \chordsPart }
        \new Staff = "englishHorn" { 
            \include "ly/rising/staves/parts/staff-defaults.ily"
            \clef treble
            \transpose f, c { 
                \englishHornGlobal 
            }
        }
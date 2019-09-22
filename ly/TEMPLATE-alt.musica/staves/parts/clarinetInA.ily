        \new ChordNames \transpose a bs { \chordsClarinet }
        \new Staff = "clarinet" { 
            \include "ly/rising/staves/parts/staff-defaults.ily"
            \clef treble
            \transpose a, bs {
                \clarinetGlobal 
            }
        }
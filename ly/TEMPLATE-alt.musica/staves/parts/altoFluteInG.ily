        \new ChordNames \transpose g c { \chordsPart }
        \new Staff = "altoFlute" { 
            \include "ly/rising/staves/parts/staff-defaults.ily"
            \clef treble
            \transpose g, c { \altoFluteGlobal }
        }
 
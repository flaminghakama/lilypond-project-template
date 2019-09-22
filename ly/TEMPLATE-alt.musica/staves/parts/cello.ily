        %\new ChordNames \transpose c c { \chordsPart }
        \new Staff = "cello" { 
            \include "ly/rising/staves/parts/staff-defaults.ily"
            \clef bass
            \transpose c c {
                \celloGlobal 
            }
        }





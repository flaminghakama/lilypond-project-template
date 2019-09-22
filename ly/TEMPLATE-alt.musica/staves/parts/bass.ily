        \new ChordNames \transpose c c { \chordsBass }
        \new Staff = "bass" { 
            \include "ly/rising/staves/parts/staff-defaults.ily"
            \clef bass
            \transpose c c <<
                \bassGlobal 
            >>
        }





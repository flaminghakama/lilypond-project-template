        \new ChordNames \transpose c c { \chordsPart }
        \new Staff = "cello" \with { \magnifyStaff #4/7 } {
            \set Staff.instrumentName = "'Cello"
            \set Staff.shortInstrumentName = #"'C."
            \include "ly/rising/staves/scores/staff-defaults.ily"
            \clef bass
            \transpose c c { 
            	\celloGlobal 
            }
        }
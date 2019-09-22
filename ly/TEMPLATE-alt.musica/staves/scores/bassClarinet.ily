        \new ChordNames \transpose c c { \chordsPart }
        \new Staff = "bassClarinet" \with { \magnifyStaff #4/7 } { 
            \set Staff.instrumentName = "Bass Clarinet"
            \set Staff.shortInstrumentName = #"B.Cl."
            \include "ly/rising/staves/scores/staff-defaults.ily"
            \clef bass
            \transpose c c { 
            	\bassClarinetGlobal 
            }
        }
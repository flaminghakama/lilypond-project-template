        \new ChordNames \transpose c c { \chordsPart }
        \new Staff = "clarinet" \with { \magnifyStaff #4/7 } {
            \set Staff.instrumentName = "Clarinet"
            \set Staff.shortInstrumentName = #"Cl."
            \include "ly/rising/staves/scores/staff-defaults.ily"
            \clef treble
            \transpose c c { 
            	\clarinetGlobal 
            }
        }
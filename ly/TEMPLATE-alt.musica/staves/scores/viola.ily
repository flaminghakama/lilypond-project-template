        \new ChordNames \transpose c c { \chordsPart }
        \new Staff = "viola" \with { \magnifyStaff #4/7 } {
            \set Staff.instrumentName = "Viola"
            \set Staff.shortInstrumentName = #"Va."
            \include "ly/rising/staves/scores/staff-defaults.ily"
            \clef alto
            \transpose c c { 
            	\violaGlobal 
            }
        }
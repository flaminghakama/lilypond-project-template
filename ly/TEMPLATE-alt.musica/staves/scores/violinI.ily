        \new ChordNames \transpose c c { \chordsPart }
        \new Staff = "violinI" \with { \magnifyStaff #4/7 } {
            \set Staff.instrumentName = "Violin I"
            \set Staff.shortInstrumentName = #"VI."
            \include "ly/rising/staves/scores/staff-defaults.ily"
            \clef treble
            transpose c c { 
            	\violinIGlobal 
            }
        }
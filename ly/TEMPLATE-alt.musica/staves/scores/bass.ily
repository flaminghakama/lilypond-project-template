        \new Staff = "bass" \with { \magnifyStaff #4/7 } { 
            \set Staff.instrumentName = "Contrabass"
            \set Staff.shortInstrumentName = #"Cb."
            \include "ly/rising/staves/scores/staff-defaults.ily"
            \clef bass
            \transpose c c { 
            	\bassGlobal 
            }
        }
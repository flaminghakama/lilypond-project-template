        \new ChordNames \transpose c c { \chordsPart }
        \new Staff = "altoFlute" \with { \magnifyStaff #4/7 } { 
            \set Staff.instrumentName = #"Alto Flute"
            \set Staff.shortInstrumentName = #"A.Fl."
            \include "ly/rising/staves/scores/staff-defaults.ily"
            \clef treble
            \transpose c c { 
                \altoFluteGlobal 
            }
        }
        \new ChordNames \transpose a c { \chordsPart }
        \new Staff = "clarinet" \with { \magnifyStaff #4/7 } {
            \set Staff.instrumentName = \markup {
                \center-column { 
                    "Clarinet"
                    "in A"
                }
            }
            \set Staff.shortInstrumentName = #"Cl."
            \include "ly/rising/staves/scores/staff-defaults.ily"
            \clef treble
            \transpose a, c { 
                \clarinetGlobal 
            }
        }
        \new ChordNames \transpose bf c { \chordsPart }
        \new Staff = "clarinet" \with { \magnifyStaff #4/7 } {
            \set Staff.instrumentName = \markup {
                \center-column { 
                    "Clarinet"
                    \line { "in B" \smaller \flat }
                }
            }
            \set Staff.shortInstrumentName = #"Cl."
            \include "ly/rising/staves/scores/staff-defaults.ily"
            \clef treble
            \transpose bf, c { 
                \clarinetGlobal 
            }
        }
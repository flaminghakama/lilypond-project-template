        \new Staff = "clarinet" { 
            \set Staff.instrumentName = \markup {
                \center-column { 
                    "Clarinet"
                    "in A"
                }
            }
            \set Staff.shortInstrumentName = #"Cl."
            \accidentalStyle modern-voice-cautionary
            \clef treble
            \keepWithTag #'(PDF Score Woodwinds Clarinet) \transpose a, c { \clarinetGlobal }
        }
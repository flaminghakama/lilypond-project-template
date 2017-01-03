        \new Staff = "horn" { 
            \set Staff.instrumentName = \markup {
                \center-column { 
                    "Horn"
                    "in F"
                }
            }
            \set Staff.shortInstrumentName = #"H."
            \accidentalStyle modern-voice-cautionary
            \clef treble
            \keepWithTag #'(PDF Score Brass Horn) \transpose f, c { \hornGlobalHead }
        }
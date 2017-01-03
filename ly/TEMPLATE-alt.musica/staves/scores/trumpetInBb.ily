        \new Staff = "trumpet" { 
            \set Staff.instrumentName = \markup {
                \center-column { 
                    "Trumpet"
                    \line { "in B" \smaller \flat }
                }
            }
            \set Staff.shortInstrumentName = #"Tp."
            \accidentalStyle modern-voice-cautionary
            \clef treble
            \keepWithTag #'(PDF Score Brass Trumpet) \transpose bf, c { \trumpetGlobalHead }
        }
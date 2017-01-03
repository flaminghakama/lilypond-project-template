        \new Staff = "baritoneSaxophone" { 
            \set Staff.instrumentName = \markup {
                \center-column { 
                    "Baritone Saxopohone"
                    \line { "in E" \smaller \flat }
                }
            }
            \set Staff.shortInstrumentName = #"B.S."
            \accidentalStyle modern-voice-cautionary
            \clef treble
            \keepWithTag #'(PDF Score Woodwinds BaritoneSaxophone) \transpose ef, c { \baritoneSaxophoneGlobalHead }
        }
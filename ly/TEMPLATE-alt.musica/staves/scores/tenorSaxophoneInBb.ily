        \new Staff = "tenorSaxophone" { 
            \set Staff.instrumentName = \markup {
                \center-column { 
                    "Tenor Saxopohone"
                    \line { "in B" \smaller \flat }
                }
            }
            \set Staff.shortInstrumentName = #"T.S."
            \accidentalStyle modern-voice-cautionary
            \clef treble
            \keepWithTag #'(PDF Score Woodwinds TenorSaxophone) \transpose bf, c { \tenorSaxophoneGlobalHead }
        }
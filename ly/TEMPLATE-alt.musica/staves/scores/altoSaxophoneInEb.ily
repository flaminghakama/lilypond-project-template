        \new Staff = "altoSaxophone" { 
            \set Staff.instrumentName = \markup {
                \center-column { 
                    "Alto Saxopohone"
                    \line { "in E" \smaller \flat }
                }
            }
            \set Staff.shortInstrumentName = #"A.S."
            \accidentalStyle modern-voice-cautionary
            \clef treble
            \keepWithTag #'(PDF Score Woodwinds AltoSaxophone) \transpose ef, c { \altoSaxophoneGlobalHead }
        }
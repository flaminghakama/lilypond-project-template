        \new Staff = "sopranoSaxophone" { 
            \set Staff.instrumentName = \markup {
                \center-column { 
                    "Soprano Saxopohone"
                    \line { "in B" \smaller \flat }
                }
            }
            \set Staff.shortInstrumentName = #"S.S."
            \accidentalStyle modern-voice-cautionary
            \clef treble
            \keepWithTag #'(PDF Score Woodwinds SopranoSaxophone) \transpose bf, c { \sopranoSaxophoneGlobalHead }
        }
        \new Staff = "altoFlute" { 
            \set Staff.instrumentName = \markup {
                \center-column { 
                    "Alto Flute"
                    "in G"
                }
            }
            \set Staff.shortInstrumentName = #"A.Fl."
            \accidentalStyle modern-voice-cautionary
            \clef treble
            \keepWithTag #'(PDF Score Woodwinds AltoFlute) \transpose g, c { \altoFluteGlobalHead }
        }
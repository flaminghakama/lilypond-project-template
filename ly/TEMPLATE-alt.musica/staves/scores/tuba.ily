        \new Staff = "tuba" { 
            \set Staff.instrumentName = "Tuba"
            \set Staff.shortInstrumentName = #"Tba."
            \accidentalStyle modern-voice-cautionary
            \clef bass
            \keepWithTag #'(PDF Score Brass Tuba) \transpose c c { \tubaGlobalHead }
        }
        \new Staff = "horn" { 
            \set Staff.instrumentName = "Horn"
            \set Staff.shortInstrumentName = #"H."
            \accidentalStyle modern-voice-cautionary
            \clef treble
            \keepWithTag #'(PDF Score Brass Horn) \transpose c c { \hornGlobalHead }
        }
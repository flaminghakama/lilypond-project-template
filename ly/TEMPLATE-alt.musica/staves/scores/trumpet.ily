        \new Staff = "trumpet" { 
            \set Staff.instrumentName = "Trumpet"
            \set Staff.shortInstrumentName = #"Tp."
            \accidentalStyle modern-voice-cautionary
            \clef treble
            \keepWithTag #'(PDF Score Brass Trumpet) \transpose c c { \trumpetGlobalHead }
        }
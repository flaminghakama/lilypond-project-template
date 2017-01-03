        \new Staff = "bass" { 
            \set Staff.instrumentName = "Contrabass"
            \set Staff.shortInstrumentName = #"Cb."
            \accidentalStyle modern-voice-cautionary
            \clef bass
            \keepWithTag #'(PDF Score Strings Bass) \transpose c c { \bassGlobalHead }
        }
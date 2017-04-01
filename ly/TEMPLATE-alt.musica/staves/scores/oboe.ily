        \new Staff = "oboe" { 
            \set Staff.instrumentName = "Oboe"
            \set Staff.shortInstrumentName = #"Ob."
            \accidentalStyle modern-voice-cautionary
            \clef treble
            \keepWithTag #'(PDF Score Woodwinds Oboe) \transpose c c { \oboeGlobal }
        }
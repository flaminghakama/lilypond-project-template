        \new Staff = "piccolo" { 
            \set Staff.instrumentName = "Piccolo"
            \set Staff.shortInstrumentName = #"Pic."
            \accidentalStyle modern-voice-cautionary
            \clef treble
            \keepWithTag #'(PDF Score Woodwinds Piccolo) \transpose c c { \piccoloGlobal }
        }
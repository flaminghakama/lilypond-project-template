        \new Staff = "bassClarinet" { 
            \set Staff.instrumentName = "Bass Clarinet"
            \set Staff.shortInstrumentName = #"B.Cl."
            \accidentalStyle modern-voice-cautionary
            \clef treble
            \keepWithTag #'(PDF Score Woodwinds BassClarinet) \transpose c, c { \bassClarinetGlobal }
        }
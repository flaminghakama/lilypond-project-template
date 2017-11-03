        \new Staff = "bass" { 
            \set Staff.instrumentName = "Bass"
            \set Staff.shortInstrumentName = #"B."
            \accidentalStyle modern-voice-cautionary
            \clef bass
            \transpose c c { \bassGlobal }
        }
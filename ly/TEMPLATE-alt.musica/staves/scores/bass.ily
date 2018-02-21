        \new Staff = "bass" \with { \magnifyStaff #4/7 } { 
            \set Staff.instrumentName = "Contrabass"
            \set Staff.shortInstrumentName = #"Cb."
            \accidentalStyle modern-voice-cautionary
            \clef bass
            \transpose c c { \bassGlobal }
        }
        \new Staff = "trombone" { 
            \set Staff.instrumentName = "Trombone"
            \set Staff.shortInstrumentName = #"Tb."
            \accidentalStyle modern-voice-cautionary
            \clef bass
            \keepWithTag #'(PDF Score Brass Trombone) \transpose c c { \tromboneGlobalHead }
        }
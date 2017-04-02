        \new Staff = "bass" { 
            \set Staff.instrumentName = "Contrabass"
            \set Staff.shortInstrumentName = #"Cb."
            \accidentalStyle modern-voice-cautionary
            \clef bass
            \keepWithTag #'(PDF Score Strings Bass
                SegmentIntro
                SegmentFunk
                SegmentAroCuban
                SegmentSoloFunk
                SegmentSoloAfroCuban
                SegmentDrum
            ) \transpose c c { \bassGlobal }
        }
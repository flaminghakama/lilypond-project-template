        \new Staff = "cello" { 
            \set Staff.instrumentName = "'Cello"
            \set Staff.shortInstrumentName = #"'C."
            \accidentalStyle modern-voice-cautionary
            \clef bass
            \keepWithTag #'(PDF Score Strings Cello
                SegmentIntro
                SegmentFunk
                SegmentAroCuban
                SegmentSoloFunk
                SegmentSoloAfroCuban
                SegmentDrum
            ) \transpose c c { \celloGlobal }
        }
        \new Staff = "violinI" { 
            \set Staff.instrumentName = "Violin I"
            \set Staff.shortInstrumentName = #"VI."
            \accidentalStyle modern-voice-cautionary
            \clef treble
            \keepWithTag #'(PDF Score Strings ViolinI
                SegmentIntro
                SegmentFunk
                SegmentAroCuban
                SegmentSoloFunk
                SegmentSoloAfroCuban
                SegmentDrum
            ) \transpose c c { \violinIGlobal }
        }
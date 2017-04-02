        \new Staff = "viola" { 
            \set Staff.instrumentName = "Viola"
            \set Staff.shortInstrumentName = #"Va."
            \accidentalStyle modern-voice-cautionary
            \clef alto
            \keepWithTag #'(PDF Score Strings Viola
                SegmentIntro
                SegmentFunk
                SegmentAroCuban
                SegmentSoloFunk
                SegmentSoloAfroCuban
                SegmentDrum
            ) \transpose c c { \violaGlobal }
        }
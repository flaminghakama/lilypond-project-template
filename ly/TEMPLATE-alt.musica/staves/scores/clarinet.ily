        \new Staff = "clarinet" { 
            \set Staff.instrumentName = "Clarinet"
            \set Staff.shortInstrumentName = #"Cl."
            \accidentalStyle modern-voice-cautionary
            \clef treble
            \keepWithTag #'(PDF Score Woodwinds Clarinet
                SegmentIntro
                SegmentFunk
                SegmentAroCuban
                SegmentSoloFunk
                SegmentSoloAfroCuban
                SegmentDrum
            ) \transpose c c { \clarinetGlobal }
        }
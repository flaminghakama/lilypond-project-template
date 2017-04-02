        \new Staff = "bassClarinet" { 
            \set Staff.instrumentName = "Bass Clarinet"
            \set Staff.shortInstrumentName = #"B.Cl."
            \accidentalStyle modern-voice-cautionary
            \clef treble
            \keepWithTag #'(PDF Score Woodwinds BassClarinet
                SegmentIntro
                SegmentFunk
                SegmentAroCuban
                SegmentSoloFunk
                SegmentSoloAfroCuban
                SegmentDrum
            ) \transpose c, c { \bassClarinetGlobal }
        }
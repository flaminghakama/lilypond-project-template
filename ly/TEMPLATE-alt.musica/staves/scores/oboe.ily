        \new ChordNames \keepWithTag #'(PDF Part Woodwinds Oboe
                SegmentIntro
                SegmentFunk
                SegmentAroCuban
                SegmentSoloFunk
                SegmentSoloAfroCuban
                SegmentDrum
            ) \transpose c c { \chordsPart }
        \new Staff = "oboe" { 
            \set Staff.instrumentName = "Oboe"
            \set Staff.shortInstrumentName = #"Ob."
            \accidentalStyle modern-voice-cautionary
            \clef treble
            \keepWithTag #'(PDF Score Woodwinds Oboe
                SegmentIntro
                SegmentFunk
                SegmentAroCuban
                SegmentSoloFunk
                SegmentSoloAfroCuban
                SegmentDrum
            ) \transpose c c { \oboeGlobal }
        }
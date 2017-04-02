        \new ChordNames \keepWithTag #'(PDF Part Strings ViolinII
                SegmentIntro
                SegmentFunk
                SegmentAroCuban
                SegmentSoloFunk
                SegmentSoloAfroCuban
                SegmentDrum
            ) \transpose c c { \chordsPart }
        \new Staff = "violinII" { 
            \set Staff.instrumentName = "Violin II"
            \set Staff.shortInstrumentName = #"VII."
            \accidentalStyle modern-voice-cautionary
            \clef treble
            \keepWithTag #'(PDF Score Strings ViolinII
                SegmentIntro
                SegmentFunk
                SegmentAroCuban
                SegmentSoloFunk
                SegmentSoloAfroCuban
                SegmentDrum
            ) \transpose c c { \violinIIGlobal }
        }
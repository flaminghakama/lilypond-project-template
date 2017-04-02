        \new Staff = "piccolo" { 
            \compressFullBarRests
            \override MultiMeasureRest.expand-limit = #1
            \set Staff.instrumentName = "Piccolo"
            \set Staff.shortInstrumentName = #"Pic."
            \override DynamicLineSpanner #'staff-padding = #3.0
            \accidentalStyle modern-voice-cautionary
            \clef treble
            \keepWithTag #'(PDF Part Woodwinds Piccolo
                SegmentIntro
                SegmentFunk
                SegmentAroCuban
                SegmentSoloFunk
                SegmentSoloAfroCuban
                SegmentDrum
            ) \transpose c c { \piccoloGlobal }
        }
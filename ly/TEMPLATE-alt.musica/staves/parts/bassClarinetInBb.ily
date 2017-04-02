        \new Staff = "bassClarinet" { 
            \compressFullBarRests
            \override MultiMeasureRest.expand-limit = #1
            \set Staff.instrumentName = ""
            \set Staff.shortInstrumentName = #""
            \override DynamicLineSpanner #'staff-padding = #3.0
            \accidentalStyle modern-voice-cautionary
            \clef treble
            \keepWithTag #'(PDF Part Woodwinds BassClarinet
                SegmentIntro
                SegmentFunk
                SegmentAroCuban
                SegmentSoloFunk
                SegmentSoloAfroCuban
                SegmentDrum
            ) \transpose bf, c { \bassClarinetGlobal }
        }
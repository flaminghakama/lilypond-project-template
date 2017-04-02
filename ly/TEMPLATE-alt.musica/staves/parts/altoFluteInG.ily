        \new Staff = "altoFlute" { 
            \compressFullBarRests
            \override MultiMeasureRest.expand-limit = #1
            \set Staff.instrumentName = ""
            \set Staff.shortInstrumentName = #""
            \override DynamicLineSpanner #'staff-padding = #3.0            
            \accidentalStyle modern-voice-cautionary
            \clef treble
            \keepWithTag #'(PDF Part Woodwinds AltoFlute
                SegmentIntro
                SegmentFunk
                SegmentAroCuban
                SegmentSoloFunk
                SegmentSoloAfroCuban
                SegmentDrum
            ) \transpose g, c { \altoFluteGlobal }
        }
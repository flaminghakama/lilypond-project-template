        \new Staff = "flute" { 
            \compressFullBarRests
            \override MultiMeasureRest.expand-limit = #1
            \set Staff.instrumentName = "Flute"
            \set Staff.shortInstrumentName = #"Fl."
            \override DynamicLineSpanner #'staff-padding = #3.0
            \accidentalStyle modern-voice-cautionary
            \clef treble
            \keepWithTag #'(PDF Part Woodwinds Flute
                SegmentIntro
                SegmentFunk
                SegmentAroCuban
                SegmentSoloFunk
                SegmentSoloAfroCuban
                SegmentDrum
            ) \transpose c c { \fluteGlobal }
        }
        \new Staff = "flute" { 
            \set Staff.instrumentName = "Flute"
            \set Staff.shortInstrumentName = #"Fl."
            \accidentalStyle modern-voice-cautionary
            \clef treble
            \keepWithTag #'(PDF Score Woodwinds Flute
                SegmentIntro
                SegmentFunk
                SegmentAroCuban
                SegmentSoloFunk
                SegmentSoloAfroCuban
                SegmentDrum
            ) \transpose c c { \fluteGlobal }
        }
        \new Staff = "clarinet" { 
            \set Staff.instrumentName = \markup {
                \center-column { 
                    "Clarinet"
                    \line { "in B" \smaller \flat }
                }
            }
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
            ) \transpose bf, c { \clarinetGlobal }
        }
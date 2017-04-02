        \new ChordNames \keepWithTag #'(PDF Part Woodwinds BassClarinet
                SegmentIntro
                SegmentFunk
                SegmentAroCuban
                SegmentSoloFunk
                SegmentSoloAfroCuban
                SegmentDrum
            ) \transpose bf c { \chordsPart }
        \new Staff = "bassClarinet" { 
            \set Staff.instrumentName = \markup {
                \center-column { 
                    "Bass Clarinet"
                    \line { "in B" \smaller \flat }
                }
            }
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
            ) \transpose bf, c { \bassClarinetGlobal }
        }
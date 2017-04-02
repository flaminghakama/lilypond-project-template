        \new ChordNames \transpose c c { \chordsPart }
        \new Staff = "altoFlute" { 
            \set Staff.instrumentName = "Alto Flute"
            \set Staff.shortInstrumentName = #"A.Fl."
            \accidentalStyle modern-voice-cautionary
            \clef treble
            \keepWithTag #'(PDF Score Woodwinds AltoFlute
                SegmentIntro
                SegmentFunk
                SegmentAroCuban
                SegmentSoloFunk
                SegmentSoloAfroCuban
                SegmentDrum
            ) \transpose c c { \altoFluteGlobal }
        }
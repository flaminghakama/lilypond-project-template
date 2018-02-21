        \new ChordNames \transpose f c { \chordsPart }
        \new Staff = "englishHorn" \with { \magnifyStaff #4/7 } {
            \set Staff.instrumentName = \markup {
                \center-column { 
                    "English Horn"
                    "in F"
                }
            }
            \set Staff.shortInstrumentName = #"E.h."
            \accidentalStyle modern-voice-cautionary
            \clef treble
            \transpose f, c { \englishHornGlobal }
        }
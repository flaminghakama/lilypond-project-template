        \new ChordNames \transpose f c { \chordsPart }
        \new Staff = "englishHorn" { 
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
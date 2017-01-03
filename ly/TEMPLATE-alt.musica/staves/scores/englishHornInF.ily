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
            \keepWithTag #'(PDF Score Woodwinds EnglishHorn) \transpose f, c { \englishHornGlobalHead }
        }
        \new Staff = "englishHorn" { 
            \set Staff.instrumentName = "English Horn"
            \set Staff.shortInstrumentName = #"E.h."
            \accidentalStyle modern-voice-cautionary
            \clef treble
            \keepWithTag #'(PDF Score Woodwinds EnglishHorn) \transpose c, c { \englishHornGlobalHead }
        }
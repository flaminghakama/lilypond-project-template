        \new ChordNames \transpose c c { \chordsPart }
        \new Staff = "englishHorn" \with { \magnifyStaff #4/7 } {
            \set Staff.instrumentName = "English Horn"
            \set Staff.shortInstrumentName = #"E.h."
            \accidentalStyle modern-voice-cautionary
            \clef treble
            \transpose c, c { \englishHornGlobal }
        }
        \new ChordNames \transpose c c { \chordsPart }
        \new Staff = "oboe" \with { \magnifyStaff #4/7 } {
            \set Staff.instrumentName = "Oboe"
            \set Staff.shortInstrumentName = #"Ob."
            \accidentalStyle modern-voice-cautionary
            \clef treble
            \transpose c c { \oboeGlobal }
        }
        \new ChordNames \transpose c c { \chordsPart }
        \new Staff = "clarinet" \with { \magnifyStaff #4/7 } {
            \set Staff.instrumentName = "Clarinet"
            \set Staff.shortInstrumentName = #"Cl."
            \accidentalStyle modern-voice-cautionary
            \clef treble
            \transpose c c { \clarinetGlobal }
        }
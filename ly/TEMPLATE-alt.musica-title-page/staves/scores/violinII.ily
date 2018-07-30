        \new ChordNames \transpose c c { \chordsPart }
        \new Staff = "violinII" \with { \magnifyStaff #4/7 } {
            \set Staff.instrumentName = "Violin II"
            \set Staff.shortInstrumentName = #"VII."
            \accidentalStyle modern-voice-cautionary
            \clef treble
            \transpose c c { \violinIIGlobal }
        }
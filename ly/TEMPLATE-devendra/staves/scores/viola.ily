        \new ChordNames \transpose c c { \chordsPart }
        \new Staff = "viola" \with { \magnifyStaff #4/7 } {
            \set Staff.instrumentName = "Viola"
            \set Staff.shortInstrumentName = #"Va."
            \accidentalStyle modern-voice-cautionary
            \clef alto
            \transpose c c { \violaGlobal }
        }
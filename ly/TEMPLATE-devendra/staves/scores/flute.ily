        \new ChordNames \transpose c c { \chordsPart }
        \new Staff = "flute" \with { \magnifyStaff #4/7 } {
            \set Staff.instrumentName = "Flute"
            \set Staff.shortInstrumentName = #"Fl."
            \accidentalStyle modern-voice-cautionary
            \clef treble
            \transpose c c { \fluteGlobal }
        }
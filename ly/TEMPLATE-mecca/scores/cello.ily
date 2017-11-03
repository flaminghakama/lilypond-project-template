        \new ChordNames \transpose c c { \chordsPart }
        \new Staff = "cello" { 
            \set Staff.instrumentName = "'Cello"
            \set Staff.shortInstrumentName = #"'C."
            \accidentalStyle modern-voice-cautionary
            \clef bass
            \transpose c c { \celloGlobal }
        }
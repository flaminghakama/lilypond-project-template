        \new ChordNames \transpose c c { \chordsPart }
        \new Staff = "trumpet" { 
            \set Staff.instrumentName = "Trumpet"
            \set Staff.shortInstrumentName = #"Trp."
            \accidentalStyle modern-voice-cautionary
            \clef treble
            \transpose c c { \trumpetGlobal }
        }
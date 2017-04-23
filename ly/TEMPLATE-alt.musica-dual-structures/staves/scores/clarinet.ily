        \new ChordNames \transpose c c { \chordsPart }
        \new Staff = "clarinet" { 
            \set Staff.instrumentName = "Clarinet"
            \set Staff.shortInstrumentName = #"Cl."
            \accidentalStyle modern-voice-cautionary
            \clef treble
            \transpose c c { \clarinetGlobal }
        }
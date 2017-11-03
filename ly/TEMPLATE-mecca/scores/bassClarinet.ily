        \new ChordNames \transpose c c { \chordsPart }
        \new Staff = "bassClarinet" { 
            \set Staff.instrumentName = "Bass Clarinet"
            \set Staff.shortInstrumentName = #"B.Cl."
            \accidentalStyle modern-voice-cautionary
            \clef treble
            \transpose c, c { \bassClarinetGlobal }
        }
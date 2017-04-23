        \new ChordNames \transpose c c { \chordsPart }
        \new Staff = "oboe" { 
            \set Staff.instrumentName = "Oboe"
            \set Staff.shortInstrumentName = #"Ob."
            \accidentalStyle modern-voice-cautionary
            \clef treble
            \transpose c c { \oboeGlobal }
        }
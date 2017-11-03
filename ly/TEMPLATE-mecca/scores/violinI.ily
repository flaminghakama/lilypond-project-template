        \new ChordNames \transpose c c { \chordsPart }
        \new Staff = "violinI" { 
            \set Staff.instrumentName = "Violin I"
            \set Staff.shortInstrumentName = #"VI."
            \accidentalStyle modern-voice-cautionary
            \clef treble
            transpose c c { \violinIGlobal }
        }
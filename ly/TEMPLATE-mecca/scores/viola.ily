        \new ChordNames \transpose c c { \chordsPart }
        \new Staff = "viola" { 
            \set Staff.instrumentName = "Viola"
            \set Staff.shortInstrumentName = #"Va."
            \accidentalStyle modern-voice-cautionary
            \clef alto
            \transpose c c { \violaGlobal }
        }
        \new ChordNames \transpose c c { \chordsPart }
        \new Staff = "violinII" { 
            \set Staff.instrumentName = "Violin II"
            \set Staff.shortInstrumentName = #"VII."
            \accidentalStyle modern-voice-cautionary
            \clef treble
            \transpose c c { \violinIIGlobal }
        }
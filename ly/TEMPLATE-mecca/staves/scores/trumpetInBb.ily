        \new ChordNames \transpose bf c { \chordsPart }
        \new Staff = "trumpet" { 
            \set Staff.instrumentName = \markup {
                \center-column { 
                    "Trumpet"
                    \line { "in B" \smaller \flat }
                }
            }
            \set Staff.shortInstrumentName = #"Trp."
            \accidentalStyle modern-voice-cautionary
            \clef treble
            \transpose bf, c { \trumpetGlobal }
        }
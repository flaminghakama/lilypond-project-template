        \new ChordNames \transpose a c { \chordsPart }
        \new Staff = "clarinet" { 
            \set Staff.instrumentName = \markup {
                \center-column { 
                    "Clarinet"
                    "in A"
                }
            }
            \set Staff.shortInstrumentName = #"Cl."
            \accidentalStyle modern-voice-cautionary
            \clef treble
            \transpose a, c { \clarinetGlobal }
        }
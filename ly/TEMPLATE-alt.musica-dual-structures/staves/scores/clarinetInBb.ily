        \new ChordNames \transpose bf c { \chordsPart }
        \new Staff = "clarinet" { 
            \set Staff.instrumentName = \markup {
                \center-column { 
                    "Clarinet"
                    \line { "in B" \smaller \flat }
                }
            }
            \set Staff.shortInstrumentName = #"Cl."
            \accidentalStyle modern-voice-cautionary
            \clef treble
            \transpose bf, c { \clarinetGlobal }
        }
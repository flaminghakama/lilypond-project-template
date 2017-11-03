        \new ChordNames \transpose bf c { \chordsPart }
        \new Staff = "bassClarinet" { 
            \set Staff.instrumentName = \markup {
                \center-column { 
                    "Bass Clarinet"
                    \line { "in B" \smaller \flat }
                }
            }
            \set Staff.shortInstrumentName = #"B.Cl."
            \accidentalStyle modern-voice-cautionary
            \clef treble
            \transpose bf, c { \bassClarinetGlobal }
        }
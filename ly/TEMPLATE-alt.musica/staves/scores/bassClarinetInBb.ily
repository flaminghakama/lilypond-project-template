        \new ChordNames \transpose bf c { \chordsPart }
        \new Staff = "bassClarinet" \with { \magnifyStaff #4/7 } {
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
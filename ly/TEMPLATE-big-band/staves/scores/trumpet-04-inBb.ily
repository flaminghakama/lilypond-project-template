        \new ChordNames \transpose bf c { \chordsPart }
        \new Staff = "trumpetIV" \with { \magnifyStaff #4/7 } {
            \set Staff.instrumentName = \markup {
                \center-column { 
                    "Trumpet IV"
                    \line { "in B" \smaller \flat }
                }
            }
            \set Staff.shortInstrumentName = #"Tp.IV"
            \clef treble
            \transpose bf, c { 
                \autoPageBreaksOff
                \trumpetIVGlobal 
            }
        }
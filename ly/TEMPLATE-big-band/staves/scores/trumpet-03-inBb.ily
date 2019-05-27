        \new ChordNames \transpose bf c { \chordsPart }
        \new Staff = "trumpetIII" \with { \magnifyStaff #4/7 } {
            \set Staff.instrumentName = \markup {
                \center-column { 
                    "Trumpet III"
                    \line { "in B" \smaller \flat }
                }
            }
            \set Staff.shortInstrumentName = #"Tp.III"
            \clef treble
            \transpose bf, c { 
                \autoPageBreaksOff
                \trumpetIIIGlobal 
            }
        }
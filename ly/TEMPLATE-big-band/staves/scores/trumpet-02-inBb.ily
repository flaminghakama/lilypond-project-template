        \new ChordNames \transpose bf c { \chordsPart }
        \new Staff = "trumpetII" \with { \magnifyStaff #4/7 } {
            \set Staff.instrumentName = \markup {
                \center-column { 
                    "Trumpet II"
                    \line { "in B" \smaller \flat }
                }
            }
            \set Staff.shortInstrumentName = #"Tp.II"
            \clef treble
            \transpose bf, c { 
                \autoPageBreaksOff
                \trumpetIIGlobal 
            }
        }
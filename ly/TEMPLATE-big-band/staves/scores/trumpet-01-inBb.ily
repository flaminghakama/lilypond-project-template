        \new ChordNames \transpose bf c { \chordsPart }
        \new Staff = "trumpetI" \with { \magnifyStaff #4/7 } {
            \set Staff.instrumentName = \markup {
                \center-column { 
                    "Trumpet I"
                    \line { "in B" \smaller \flat }
                }
            }
            \set Staff.shortInstrumentName = #"Tp.I"
            \clef treble
            \transpose bf, c { 
                \autoPageBreaksOff
                \trumpetIGlobal 
            }
        }
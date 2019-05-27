        \new ChordNames \transpose c c { \chordsPart }
        \new Staff = "tromboneIII" \with { \magnifyStaff #4/7 } {
            \set Staff.instrumentName = \markup {
                \center-column { 
                    "Trombone III"
                }
            }
            \set Staff.shortInstrumentName = #"Tb.III"
            \clef bass
            \transpose c c { 
                \autoPageBreaksOff
                \tromboneIIIGlobal 
            }
        }
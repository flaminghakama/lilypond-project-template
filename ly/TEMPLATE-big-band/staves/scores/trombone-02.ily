        \new ChordNames \transpose c c { \chordsPart }
        \new Staff = "tromboneII" \with { \magnifyStaff #4/7 } {
            \set Staff.instrumentName = \markup {
                \center-column { 
                    "Trombone II"
                }
            }
            \set Staff.shortInstrumentName = #"Tb.II"
            \clef bass
            \transpose c c { 
                \autoPageBreaksOff
                \tromboneIIGlobal 
            }
        }
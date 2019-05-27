        \new ChordNames \transpose c c { \chordsPart }
        \new Staff = "tromboneI" \with { \magnifyStaff #4/7 } {
            \set Staff.instrumentName = \markup {
                \center-column { 
                    "Trombone I"
                }
            }
            \set Staff.shortInstrumentName = #"Tb.I"
            \clef bass
            \transpose c c { 
                \autoPageBreaksOff
                \tromboneIGlobal 
            }
        }
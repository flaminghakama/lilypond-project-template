        \new ChordNames \transpose c c { \chordsPart }
        \new Staff = "tromboneIV" \with { \magnifyStaff #4/7 } {
            \set Staff.instrumentName = \markup {
                \center-column { 
                    "Trombone IV"
                }
            }
            \set Staff.shortInstrumentName = #"Tb.IV"
            \clef bass
            \transpose c c { 
                \autoPageBreaksOff
                \tromboneIVGlobal 
            }
        }
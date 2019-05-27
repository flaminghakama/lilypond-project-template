        \new ChordNames \transpose ef c { \chordsPart }
        \new Staff = "altoSaxophoneII" \with { \magnifyStaff #4/7 } {
            \set Staff.instrumentName = \markup {
                \center-column { 
                    "Alto Saxophone II"
                    \line { "in E" \smaller \flat }
                }
            }
            \set Staff.shortInstrumentName = #"A.S.II"
            \clef treble
            \transpose ef, c { 
                \autoPageBreaksOff
                \altoSaxophoneIIGlobal 
            }
        }
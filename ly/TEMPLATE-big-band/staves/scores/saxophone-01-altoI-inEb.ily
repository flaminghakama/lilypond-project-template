        \new ChordNames \transpose ef c { \chordsPart }
        \new Staff = "altoSaxophoneI" \with { \magnifyStaff #4/7 } {
            \set Staff.instrumentName = \markup {
                \center-column { 
                    "Alto Saxophone I"
                    \line { "in E" \smaller \flat }
                }
            }
            \set Staff.shortInstrumentName = #"A.S.I"
            \clef treble
            \transpose ef, c { 
                \autoPageBreaksOff
                \altoSaxophoneIGlobal 
            }
        }
        \new ChordNames \transpose ef c { \chordsPart }
        \new Staff = "baritoneSaxophone" \with { \magnifyStaff #4/7 } {
            \set Staff.instrumentName = \markup {
                \center-column { 
                    "Baritone Saxophone I"
                    \line { "in E" \smaller \flat }
                }
            }
            \set Staff.shortInstrumentName = #"B.S"
            \clef treble
            \transpose ef,, c { 
                \autoPageBreaksOff
                \baritoneSaxophoneGlobal 
            }
        }
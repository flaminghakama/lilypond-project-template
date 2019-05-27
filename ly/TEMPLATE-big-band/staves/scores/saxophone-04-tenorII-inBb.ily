        \new ChordNames \transpose bf c { \chordsPart }
        \new Staff = "tenorSaxophoneII" \with { \magnifyStaff #4/7 } {
            \set Staff.instrumentName = \markup {
                \center-column { 
                    "Tenor Saxophone II"
                    \line { "in B" \smaller \flat }
                }
            }
            \set Staff.shortInstrumentName = #"T.S.II"
            \clef treble
            \transpose bf,, c { 
                \autoPageBreaksOff
                \tenorSaxophoneIIGlobal 
            }
        }
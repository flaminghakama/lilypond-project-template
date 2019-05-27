        \new ChordNames \transpose bf c { \chordsPart }
        \new Staff = "tenorSaxophoneI" \with { \magnifyStaff #4/7 } {
            \set Staff.instrumentName = \markup {
                \center-column { 
                    "Tenor Saxophone I"
                    \line { "in B" \smaller \flat }
                }
            }
            \set Staff.shortInstrumentName = #"T.S.I"
            \clef treble
            \transpose bf,, c { 
                \autoPageBreaksOff
                \tenorSaxophoneIGlobal 
            }
        }
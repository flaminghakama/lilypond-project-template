        \new ChordNames \transpose c c { \chordsPart }
        \new Staff = "tromboneII" { 
            \include "ly/annes-eyes/staves/parts/staff-defaults.ily"
            \override DynamicLineSpanner #'staff-padding = #3.4
            \clef bass
            \transpose c c { 
                \autoPageBreaksOff
                \tromboneIIGlobal 
            }
        }
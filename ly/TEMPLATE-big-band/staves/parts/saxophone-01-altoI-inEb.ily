        \new ChordNames \transpose ef c { \chordsPart }
        \new Staff = "altoSaxophoneI" { 
            \include "ly/annes-eyes/staves/parts/staff-defaults.ily"
            \override DynamicLineSpanner #'staff-padding = #3.4
            \clef treble
            \transpose ef, c { 
                \autoPageBreaksOff
                \altoSaxophoneIGlobal 
            }
        }
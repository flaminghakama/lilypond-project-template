        \new ChordNames \transpose bf c { \chordsPart }
        \new Staff = "trumpetI" { 
            \include "ly/annes-eyes/staves/parts/staff-defaults.ily"
            \override DynamicLineSpanner #'staff-padding = #3.4
            \clef treble
            \transpose bf, c { 
                \autoPageBreaksOff
                \trumpetIGlobal 
            }
        }
        \new ChordNames \transpose c c { \chordsFlute }
        \new Staff = "flute" { 
            \include "ly/rising/staves/parts/staff-defaults.ily"
            \clef treble
            \transpose c c { 
                \fluteGlobal 
            }
        }





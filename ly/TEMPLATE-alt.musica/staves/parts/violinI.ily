        %\new ChordNames \transpose c c { \chordsPart }
        \new Staff = "violinI" { 
            \include "ly/rising/staves/parts/staff-defaults.ily"
            \clef treble
            \transpose c c {
                \violinIGlobal 
            }
        }





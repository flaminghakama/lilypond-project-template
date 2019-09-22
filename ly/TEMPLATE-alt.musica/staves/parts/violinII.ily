        %\new ChordNames \transpose c c { \chordsPart }
        \new Staff = "violinII" { 
            \include "ly/rising/staves/parts/staff-defaults.ily"
            \clef treble
            \transpose c c {
                \violinIIGlobal 
            }
        }





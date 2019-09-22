        \new ChordNames \transpose c c { \chordsPart }
        \new Staff = "englishHorn" \with { \magnifyStaff #4/7 } {
            \set Staff.instrumentName = "English Horn"
            \set Staff.shortInstrumentName = #"E.h."
            \include "ly/rising/staves/scores/staff-defaults.ily"
            \clef treble
            \transpose c c { 
                \englishHornGlobal 
            }
        }
        \new ChordNames \transpose c c { \chordsPart }
        \new Staff = "flute" \with { \magnifyStaff #4/7 } {
            \set Staff.instrumentName = "Flute"
            \set Staff.shortInstrumentName = #"Fl."
            \include "ly/rising/staves/scores/staff-defaults.ily"
            \clef treble
            \transpose c c { 
                \fluteGlobal 
            }
        }
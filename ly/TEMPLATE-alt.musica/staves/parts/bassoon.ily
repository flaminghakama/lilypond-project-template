        \new ChordNames \transpose c c { \chordsPart }
        \new RhythmicStaff \with {
            \override VerticalAxisGroup.staff-staff-spacing.basic-distance = #0.3
        } {
            \beatPatternPart
        }
        \new Staff = "bassoon" { 
            \include "ly/rising/staves/parts/staff-defaults.ily"
            \override DynamicLineSpanner #'staff-padding = #3.0
            \clef bass
            \transpose c c { 
                \autoPageBreaksOff
                \bassoonGlobal 
            }
        }
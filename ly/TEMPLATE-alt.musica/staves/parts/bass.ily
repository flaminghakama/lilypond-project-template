        \new ChordNames \transpose c c { \chordsBass }
        %{
        \new RhythmicStaff \with {
            \override VerticalAxisGroup.staff-staff-spacing.basic-distance = #5
        } {
            \beatPatternPart
        }
        %}
        \new Staff = "bass" { 
            \include "ly/rising/staves/parts/staff-defaults.ily"
            \override DynamicLineSpanner #'staff-padding = #3.0
            \clef bass
            \transpose c c <<
                \autoPageBreaksOff
                \bassBreaks
                \bassGlobal 
            >>
        }





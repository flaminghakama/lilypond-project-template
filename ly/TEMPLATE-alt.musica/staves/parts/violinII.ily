        %\new ChordNames \transpose c c { \chordsPart }
        %{
        \new RhythmicStaff \with {
            \override VerticalAxisGroup.staff-staff-spacing.basic-distance = #0.3
        } {
            \beatPatternPart
        }
        %}
        \new Staff = "violinII" \with {
            \override VerticalAxisGroup.default-staff-staff-spacing.basic-distance = #0
        } { 
            \include "ly/rising/staves/parts/staff-defaults.ily"
            \override DynamicLineSpanner #'staff-padding = #3.0
            \clef treble
            \transpose c c <<
                \autoPageBreaksOff
                \beatPatternPart
                \violinIIGlobal 
            >>
        }





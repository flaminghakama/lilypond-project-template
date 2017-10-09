#(set-default-paper-size "legallandscape")
\book {
    \paper {

        % First page spacing after header
        markup-system-spacing.padding = #6

        % Subsequent page spacing after header
        top-system-spacing.minimum-distance = #18

        % Spacing in between systems
        system-system-spacing.minimum-distance = #12
    }
    \header {
        subtitle = ""
        poet = "POET"
        instrumentName = \poet
    }

    \score {
        \keepWithTag #'(Score PDF
            SegmentX
            SegmentA
            SegmentB
            SegmentC
            SegmentD
            SegmentE 
        ) <<
            \include "ly/SONG/staffgroups/Woodwinds.ily"
            \include "ly/SONG/staffgroups/Brass.ily"
            \include "ly/SONG/staffgroups/Strings.ily"
        >>
        \layout { 
            indent = 3.15\cm
            short-indent = 1.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
            }
        }
    }
}

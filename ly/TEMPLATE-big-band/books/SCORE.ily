#(set-default-paper-size "letterlandscape")

\book {
    \paper {

        top-margin = #6

        % First page spacing after header
        markup-system-spacing.padding = #6

        % Subsequent page spacing after header
        top-system-spacing.minimum-distance = #18

        % Spacing in between systems
        system-system-spacing.minimum-distance = #12
    }
    \header {
        subtitle = ""
        poet = "Transposed Score"
        instrumentName = \poet
    }

    %%%%% listening %%%%%
    \score {
        \keepWithTag #'(Score PDF
            SegmentOne
            SegmentTwo
            SegmentThree
            SegmentFour        
        ) <<
            \include "ly/listening/staffgroups/transposed/Saxophones.ily"
            \include "ly/listening/staffgroups/transposed/Trumpets.ily"
            \include "ly/listening/staffgroups/transposed/Trombones.ily"
            \include "ly/listening/staffgroups/transposed/Rhythm.ily"
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

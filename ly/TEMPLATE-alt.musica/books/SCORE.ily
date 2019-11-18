#(set-default-paper-size "letterlandscape")

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

    %%%%% SONG %%%%%
    \score {
        \keepWithTag #'(Score PDF
            Flute
            EnglishHorn
            BassClarinet
            Bassoon
            Voice
            Drums
            ViolinI
            ViolinII
            Viola
            Cello
            Bass
            SegmentVerseI
            SegmentChorusI
            SegmentVerseII
            SegmentChorusII
            SegmentVerseIII
            SegmentChorusIII
            SegmentBridgeI
            SegmentVerseSolo
            SegmentChorusSolo
            SegmentBridgeSolo
            SegmentVerseIV
            SegmentChorusIV
            SegmentCoda
        ) <<
            \include "ly/SONG/staffgroups/concert/Woodwinds.ily"
            \include "ly/SONG/staffgroups/concert/Voices.ily"
            \include "ly/SONG/staffgroups/concert/Percussion.ily"
            \include "ly/SONG/staffgroups/concert/Strings.ily"
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

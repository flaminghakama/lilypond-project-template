\include "ly/SONG/structures/header-SONG.ily"

\book {
    \paper {

        top-margin = #10
        right-margin = #17

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

    \include "ly/SONG/structures/header-SONG.ily"
    \score {
        \keepWithTag #'(PDF Score
            ChorusI
            ChorusII
            ChorusIII
        ) <<
            \include "ly/SONG/staffgroups/transposed/Winds.ily"
            \include "ly/SONG/staffgroups/transposed/Voices.ily"
            \include "ly/SONG/staffgroups/transposed/Percussion.ily"
            \include "ly/SONG/staffgroups/transposed/Strings.ily"
        >>
        \layout {
            indent = 1.25\cm
            short-indent = .25\cm
        }
    }
}

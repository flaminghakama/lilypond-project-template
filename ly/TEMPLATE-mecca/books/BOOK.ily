\book {
    \paper {

        top-margin = #10
        right-margin = #17

        % First page spacing after header
        markup-system-spacing #'padding = #6

        % Subsequent page spacing after header
        top-system-spacing #'minimum-distance = #18

        % Spacing in between systems
        system-system-spacing #'minimum-distance = #12
    }
    \header {
        subtitle = ""
        poet= "POET"
        instrumentName = \poet
    }

    \include "ly/SONG/structures/header.ily"
    \include "ly/SONG/music/INSTRUMENT.ily"
    \score {
        \keepWithTag #'(PDF Part) <<
            \include "ly/SONG/staves/parts/INSTRUMENT.ily"
        >>
        \layout {
            indent = 1.25\cm
            short-indent = .25\cm
        }
    }

}

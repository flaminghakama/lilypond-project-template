\book {
    \paper {

        top-margin = #10
        right-margin = #16

        % First page spacing after header
        markup-system-spacing #'padding = #6

        % Subsequent page spacing after header
        top-system-spacing #'minimum-distance = #16

        % Spacing in between systems
        system-system-spacing #'minimum-distance = #12
    }
    \header {
        instrumentName = "POET"
        poet = "POET"
    }

    %%%%% SONG %%%%%
    \score {
        <<
            \include "ly/SONG/staves/part/INSTRUMENT.ily"
        >>
        \layout {
            indent = 1.85\cm
            short-indent = .35\cm
        }
    }
}

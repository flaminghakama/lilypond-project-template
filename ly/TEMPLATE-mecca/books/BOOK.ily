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

    \include "ly/SONG/structures/header-overature.ily"
    \include "ly/SONG/music/INSTRUMENT-overature.ily"
    \score {
        \keepWithTag #'(PDF Part) <<
            \include "ly/SONG/staves/parts/INSTRUMENT.ily"
        >>
        \layout {
            indent = 1.25\cm
            short-indent = .25\cm
        }
    }

    \include "ly/SONG/structures/header-ellis.ily"
    \include "ly/SONG/music/INSTRUMENT-ellis.ily"
    \score {
        \keepWithTag #'(PDF Part) <<
            \include "ly/SONG/staves/parts/INSTRUMENT.ily"
        >>
        \layout {
            indent = 1.25\cm
            short-indent = .25\cm
        }
    }

    \include "ly/SONG/structures/header-always.ily"
    \include "ly/SONG/music/INSTRUMENT-always.ily"
    \score {
        \keepWithTag #'(PDF Part) <<
            \include "ly/SONG/staves/parts/INSTRUMENT.ily"
        >>
        \layout {
            indent = 1.25\cm
            short-indent = .25\cm
        }
    }

    \include "ly/SONG/structures/header-roof.ily"
    \include "ly/SONG/music/INSTRUMENT-roof.ily"
    \score {
        \keepWithTag #'(PDF Part) <<
            \include "ly/SONG/staves/parts/INSTRUMENT.ily"
        >>
        \layout {
            indent = 1.25\cm
            short-indent = .25\cm
        }
    }

    \include "ly/SONG/structures/header-evicted.ily"
    \include "ly/SONG/music/INSTRUMENT-evicted.ily"
    \score {
        \keepWithTag #'(PDF Part) <<
            \include "ly/SONG/staves/parts/INSTRUMENT.ily"
        >>
        \layout {
            indent = 1.25\cm
            short-indent = .25\cm
        }
    }

    \include "ly/SONG/structures/header-speculation.ily"
    \include "ly/SONG/music/INSTRUMENT-speculation.ily"
    \score {
        \keepWithTag #'(PDF Part) <<
            \include "ly/SONG/staves/parts/INSTRUMENT.ily"
        >>
        \layout {
            indent = 1.25\cm
            short-indent = .25\cm
        }
    }

    \include "ly/SONG/structures/header-city.ily"
    \include "ly/SONG/music/INSTRUMENT-city.ily"
    \score {
        \keepWithTag #'(PDF Part) <<
            \include "ly/SONG/staves/parts/INSTRUMENT.ily"
        >>
        \layout {
            indent = 1.25\cm
            short-indent = .25\cm
        }
    }

    \include "ly/SONG/structures/header-tired.ily"
    \include "ly/SONG/music/INSTRUMENT-tired.ily"
    \score {
        \keepWithTag #'(PDF Part) <<
            \include "ly/SONG/staves/parts/INSTRUMENT.ily"
        >>
        \layout {
            indent = 1.25\cm
            short-indent = .25\cm
        }
    }

    \include "ly/SONG/structures/header-america.ily"
    \include "ly/SONG/music/INSTRUMENT-america.ily"
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

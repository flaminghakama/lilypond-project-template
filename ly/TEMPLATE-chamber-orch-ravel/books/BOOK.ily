\book {
    \paper {

        % First page spacing after header
        markup-system-spacing.padding = #9

        % Subsequent page spacing after header
        top-system-spacing.minimum-distance = #20

        % Spacing in between systems
        system-system-spacing.minimum-distance = #21
    }
    \header {
        subtitle = ""
        poet= "POET"
        instrumentName = \poet
    }

    \score {
        \keepWithTag #'(Part PDF
            SegmentX
            SegmentA
            SegmentB
            SegmentC
            SegmentD
            SegmentE 
        ) <<
            \include "ly/SONG/staves/parts/INSTRUMENT.ily"
        >>
        \layout {
            indent = 1.25\cm
            short-indent = .25\cm
        }
    }
}

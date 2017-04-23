\book {
    \paper {

        % First page spacing after header
        markup-system-spacing #'padding = #6

        % Subsequent page spacing after header
        top-system-spacing #'minimum-distance = #18

        % Spacing in between systems
        system-system-spacing #'minimum-distance = #15
    }
    \header {
        subtitle = ""
        poet= "POET"
        instrumentName = \poet
    }
    %%%%% SONG %%%%%
    \score {
        \keepWithTag #'(Part PDF
            InstrumentINSTRUMENT
            SectionSECTION
            SegmentIntro
            SegmentFunk
            SegmentAroCuban
            SegmentSoloFunk
            SegmentSoloAfroCuban
            SegmentDrum
        ) <<
            \include "ly/SONG/staves/parts/INSTRUMENT.ily"
        >>
        \layout {
            indent = 1.25\cm
            short-indent = .25\cm
        }
    }
}

\include "../flaming-libs/flaming-title-page.ily"
\paper {
    % First page spacing after header
    markup-system-spacing.padding = #6

    % Subsequent page spacing after header
    top-system-spacing.minimum-distance = #18

    % Spacing in between systems
    system-system-spacing.minimum-distance = #17.5
}

\book {

    \bookpart { 
        \markup \title-page-markup \INSTRUMENTName \titlePageComposerName \titleFull
    }

    \bookpart { 
        \header {
            subtitle = ""
            poet = \INSTRUMENTName
            instrumentName = \poet
        }

        %%%%% SONG %%%%%
        \score {
            \keepWithTag #'(Part PDF
                InstrumentTAGNAME
                SegmentIntro
                SegmentFunk
                SegmentAroCuban
                SegmentSoloFunk
                SegmentSoloAfroCuban
                SegmentDrum
            ) <<
                \include "ly/SONG/staves/parts/PART.ily"
            >>
            \include "ly/SONG/parts/layout.ily"
        }
    }
}

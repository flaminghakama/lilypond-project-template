\paper {
    % First page spacing after header
    markup-system-spacing.padding = #6

    % Subsequent page spacing after header
    top-system-spacing.minimum-distance = #18

    % Spacing in between systems
    system-system-spacing.minimum-distance = #17.5
}

\book {
    \header {
        poet = \INSTRUMENTName
        instrumentName = \poet
    }

    \score {
        \keepWithTag #'(Part PDF
            SegmentOne
            SegmentTwo
            SegmentThree
            SegmentFour        
        ) <<
            \include "ly/SONG/staves/parts/PART.ily"
        >>
        \include "ly/SONG/parts/layout.ily"
    }
}

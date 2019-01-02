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

    %%%%% wee %%%%%
    \score {
        \keepWithTag #'(Part PDF
            InstrumentTAGNAME
            SegmentIntro
            
            SegmentSthaiOneOne
            SegmentSthaiOneTwo
            SegmentInterludeOne
            SegmentAntaraOne

            SegmentSthaiTwo
            SegmentInterludeTwo
            SegmentAntaraTwo
            
            SegmentSthaiThree
            SegmentInterludeThree
            SegmentAntaraThree
            
            SegmentSthaiFour
            SegmentInterludeFour
            SegmentAntaraFour
            
            SegmentSthaiFive
            SegmentAntaraFive

            SegmentSthaiSix
        ) <<
            \include "ly/SONG/staves/parts/PART.ily"
        >>
        \include "ly/SONG/parts/layout.ily"
    }
}

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
        subtitle = ""
        poet = \INSTRUMENTName
        instrumentName = \poet
    }

    %%%%% wee %%%%%
    \score {
        \keepWithTag #'(Part PDF
            InstrumentTAGNAME
            SegmentAI
            SegmentAII 
            SegmentAIII 
            SegmentAIV
            SegmentBI
            SegmentBII
            SegmentBIII
            SegmentBSolo
            SegmentBIReprise 
            SegmentBIIReprise
            SegmentBIIIReprise
            SegmentCoda
        ) <<
            \include "ly/SONG/staves/parts/PART.ily"
        >>
        \include "ly/SONG/parts/layout.ily"
    }
}

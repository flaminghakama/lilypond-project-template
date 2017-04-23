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
    }
    %%%%% SONG %%%%%
    \score {
        \keepWithTag #'(OneTime Part PDF
            InstrumentINSTRUMENT
            SegmentTop
            SegmentA
            SegmentB
            SegmentC
            SegmentD
            SegmentE
            SegmentF
            SegmentG
            SegmentH
            SegmentI
            SegmentJ
            SegmentK
            SegmentL
            SegmentM
            SegmentN
            SegmentO
            SegmentP
            SegmentQ
            SegmentR
            SegmentS
            SegmentT
        ) <<
            \include "ly/SONG/staves/INSTRUMENT.ily"
        >>
        \layout {
            indent = 1.25\cm
            short-indent = .25\cm
        }
    }

    %%%%% CODA %%%%% 
    \score {
        \header { 
            piece = " "
        }
        \keepWithTag #'(OneTime Part 
            InstrumentINSTRUMENT
            SegmentCoda
        ) <<
            \set Score.currentBarNumber = #1
            \include "ly/SONG/staves/INSTRUMENT.ily"
        >>
        \layout {
            indent = 1.875\cm
            short-indent = .25\cm
        }
    }
}

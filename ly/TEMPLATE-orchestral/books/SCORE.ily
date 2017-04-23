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
        poet = "POET"
    }

    %%%%% SONG %%%%%
    \score {
        \keepWithTag #'(OneTime Score PDF
            SectionWoodwinds
            SectionBrass
            SectionStrings
            InstrumentFlute
            InstrumentOboe
            InstrumentEnglishHorn
            InstrumentClarinet
            InstrumentBassoon
            InstrumentTrumpet
            InstrumentHorn
            InstrumentTrombone
            InstrumentTuba
            InstrumentViolinI
            InstrumentViolinII
            InstrumentViola
            InstrumentCello
            InstrumentBass
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
            \include "ly/homage-to-brahms-original/staffgroups/Woodwinds.ily"
            \include "ly/homage-to-brahms-original/staffgroups/Brass.ily"
            \include "ly/homage-to-brahms-original/staffgroups/Strings.ily"
        >>
        \layout { 
            indent = 3.15\cm
            short-indent = 1.25\cm
        }
    }

    %%%%% CODA %%%%%
    \score {
        \keepWithTag #'(OneTime Score PDF
            SectionWoodwinds
            SectionBrass
            SectionStrings
            InstrumentFlute
            InstrumentOboe
            InstrumentEnglishHorn
            InstrumentClarinet
            InstrumentBassoon
            InstrumentTrumpet
            InstrumentHorn
            InstrumentTrombone
            InstrumentTuba
            InstrumentViolinI
            InstrumentViolinII
            InstrumentViola
            InstrumentCello
            InstrumentBass
            SegmentCoda
        ) <<
            \include "ly/homage-to-brahms-original/staffgroups/Woodwinds.ily"
            \include "ly/homage-to-brahms-original/staffgroups/Brass.ily"
            \include "ly/homage-to-brahms-original/staffgroups/Strings.ily"
        >>
        \layout { 
            indent = 3.15\cm
            short-indent = 1.25\cm
        }
    }
}

\book {
    \paper {

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
        instrumentName = \poet
    }

    %%%%% SONG %%%%%
    \score {
        \keepWithTag #'(Score PDF
            SectionWoodwinds
            SectionChoir
            SectionPercussion
            SectionStrings
            InstrumentPiccolo
            InstrumentEnglishHorn
            InstrumentBassClarinet
            InstrumentVoice
            InstrumentDrums
            InstrumentViolinI
            InstrumentViolinII
            InstrumentViola
            InstrumentCello
            InstrumentBass
            SegmentIntro
            SegmentFunk
            SegmentAroCuban
            SegmentSoloFunk
            SegmentSoloAfroCuban
            SegmentDrum
        ) <<
            \include "ly/SONG/staffgroups/Woodwinds.ily"
            \include "ly/SONG/staffgroups/Choir.ily"
            \include "ly/SONG/staffgroups/Percussion.ily"
            \include "ly/SONG/staffgroups/Strings.ily"
        >>
        \layout { 
            indent = 3.15\cm
            short-indent = 1.25\cm
        }
    }
}

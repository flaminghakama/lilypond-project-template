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
            <<
                \new ChordNames \transpose c c { \chordsPart }
                \new Staff = "flute" { 
                    \compressFullBarRests
                    \override MultiMeasureRest.expand-limit = #1
                    \set Staff.instrumentName = ""
                    \set Staff.shortInstrumentName = #""
                    \override DynamicLineSpanner #'staff-padding = #3.0
                    %\override DynamicLineSpanner #'Y-extent = #'(-1.5 . 1.5)
                    \accidentalStyle modern-voice-cautionary
                    \clef treble
                    \keepWithTag #'(Part PDF
                        INSTRUMENT
                        SECTION
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
                        indent = 1.75\cm
                        short-indent = .75\cm
                    }
                }
            >>
        }
    }
}


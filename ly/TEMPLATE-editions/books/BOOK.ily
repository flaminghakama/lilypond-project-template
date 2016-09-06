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
        poet= "'POET"
    }

    \bookpart {

        \header {
            title = ""
            subtitle = \markup \center-column { \vspace #1 "SegmentOne" }
            poet = ""
            composer = ""
            arranger = ""
        }

        \score {
            \keepWithTag #'(OneTime Part PDF
                SegmentOne
            )
            <<
                \new Staff = "cues" \with { \magnifyStaff #5/7 } {
                    \compressFullBarRests
                    \override MultiMeasureRest.expand-limit = #1
                    \set Staff.instrumentName = "Cues"
                    \set Staff.shortInstrumentName = #""
                    \accidentalStyle modern-voice-cautionary
                    \keepWithTag #'(OneTime Part) \transpose c c { \globalSong \INSTRUMENTCues }
                }
                \new ChordNames \transpose c c { \chordsSong  }
                \new Staff = "INSTRUMENT" { 
                    \compressFullBarRests
                    \override MultiMeasureRest.expand-limit = #1
                    \set Staff.instrumentName = ""
                    \set Staff.shortInstrumentName = #""
                    \override DynamicLineSpanner #'staff-padding = #3.0
                    %\override DynamicLineSpanner #'Y-extent = #'(-1.5 . 1.5)
                    \accidentalStyle modern-voice-cautionary
                    \clef alto
                    \keepWithTag #'(OneTime Part PDF
                        SegmentOne
                    ) \transpose c c { \INSTRUMENTGlobalSong }
                }
            >>
            \layout {
                indent = 1.25\cm
                short-indent = .45\cm
            }
        }
    }

%{
    \bookpart {

        \header {
            title = ""
            subtitle = \markup \center-column { \vspace #1 "SegmentTwo" }
            poet = ""
            composer = ""
            arranger = ""
        }

        \score {
            \keepWithTag #'(OneTime Part PDF
                SegmentTwo
            )
            <<
                \new Staff = "cues" \with { \magnifyStaff #5/7 } {
                    \compressFullBarRests
                    \override MultiMeasureRest.expand-limit = #1
                    \set Staff.instrumentName = "Cues"
                    \set Staff.shortInstrumentName = #""
                    \accidentalStyle modern-voice-cautionary
                    \keepWithTag #'(OneTime Part) \transpose c c { \globalSong \INSTRUMENTCues }
                }
                \new ChordNames \transpose c c { \chordsSong  }
                \new Staff = "INSTRUMENT" { 
                    \compressFullBarRests
                    \override MultiMeasureRest.expand-limit = #1
                    \set Staff.instrumentName = ""
                    \set Staff.shortInstrumentName = #""
                    \override DynamicLineSpanner #'staff-padding = #3.0
                    %\override DynamicLineSpanner #'Y-extent = #'(-1.5 . 1.5)
                    \accidentalStyle modern-voice-cautionary
                    \clef alto
                    \keepWithTag #'(OneTime Part PDF
                        SegmentTwo
                    ) \transpose c c { \INSTRUMENTGlobalSong }
                }
            >>
            \layout {
                indent = 1.25\cm
                short-indent = .45\cm
            }
        }
    }
%}


%{
    \bookpart {

        \header {
            title = ""
            subtitle = \markup \center-column { \vspace #1 "SegmentThree" }
            poet = ""
            composer = ""
            arranger = ""
        }

        \score {
            \keepWithTag #'(OneTime Part PDF
                SegmentThree
            )
            <<
                \new Staff = "cues" \with { \magnifyStaff #5/7 } {
                    \compressFullBarRests
                    \override MultiMeasureRest.expand-limit = #1
                    \set Staff.instrumentName = "Cues"
                    \set Staff.shortInstrumentName = #""
                    \accidentalStyle modern-voice-cautionary
                    \keepWithTag #'(OneTime Part) \transpose c c { \globalSong \INSTRUMENTCues }
                }
                \new ChordNames \transpose c c { \chordsSong  }
                \new Staff = "INSTRUMENT" { 
                    \compressFullBarRests
                    \override MultiMeasureRest.expand-limit = #1
                    \set Staff.instrumentName = ""
                    \set Staff.shortInstrumentName = #""
                    \override DynamicLineSpanner #'staff-padding = #3.0
                    %\override DynamicLineSpanner #'Y-extent = #'(-1.5 . 1.5)
                    \accidentalStyle modern-voice-cautionary
                    \clef alto
                    \keepWithTag #'(OneTime Part PDF
                        SegmentThree
                    ) \transpose c c { \INSTRUMENTGlobalSong }
                }
            >>
            \layout {
                indent = 1.25\cm
                short-indent = .45\cm
            }
        }
    }
%}


%{
    \bookpart {

        \header {
            title = ""
            subtitle = \markup \center-column { \vspace #1 "SegmentFour" }
            poet = ""
            composer = ""
            arranger = ""
        }

        \score {
            \keepWithTag #'(OneTime Part PDF
                SegmentFour
            )
            <<
                \new Staff = "cues" \with { \magnifyStaff #5/7 } {
                    \compressFullBarRests
                    \override MultiMeasureRest.expand-limit = #1
                    \set Staff.instrumentName = "Cues"
                    \set Staff.shortInstrumentName = #""
                    \accidentalStyle modern-voice-cautionary
                    \keepWithTag #'(OneTime Part) \transpose c c { \globalSong \INSTRUMENTCues }
                }
                \new ChordNames \transpose c c { \chordsSong  }
                \new Staff = "INSTRUMENT" { 
                    \compressFullBarRests
                    \override MultiMeasureRest.expand-limit = #1
                    \set Staff.instrumentName = ""
                    \set Staff.shortInstrumentName = #""
                    \override DynamicLineSpanner #'staff-padding = #3.0
                    %\override DynamicLineSpanner #'Y-extent = #'(-1.5 . 1.5)
                    \accidentalStyle modern-voice-cautionary
                    \clef alto
                    \keepWithTag #'(OneTime Part PDF
                        SegmentFour
                    ) \transpose c c { \INSTRUMENTGlobalSong }
                }
            >>
            \layout {
                indent = 1.25\cm
                short-indent = .45\cm
            }
        }
    }
%}


}






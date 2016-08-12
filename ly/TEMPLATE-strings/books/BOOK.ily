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

    %%%%% SONG %%%%%
    \score {
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
                \set Staff.instrumentName = "POET"
                \set Staff.shortInstrumentName = #""
                \override DynamicLineSpanner #'staff-padding = #3.0
                %\override DynamicLineSpanner #'Y-extent = #'(-1.5 . 1.5)
                \accidentalStyle modern-voice-cautionary
                \clef bass
                \keepWithTag #'(OneTime Part) \transpose c c { \INSTRUMENTGlobalSong }
            }
        >>
        \layout {
            indent = 3.25\cm
            short-indent = .25\cm
        }
    }

    %%%%% CODA %%%%%
    \score {
        <<
            \new Staff = "cues" \with { \magnifyStaff #5/7 } {
                \compressFullBarRests
                \override MultiMeasureRest.expand-limit = #1
                \set Staff.instrumentName = "Cues"
                \set Staff.shortInstrumentName = #""
                \accidentalStyle modern-voice-cautionary
                \keepWithTag #'(OneTime Part) \transpose c c { \globalCoda \INSTRUMENTCuesCoda }
            }
            \new ChordNames \transpose c c { \chordsSong  }
            \new Staff = "INSTRUMENT" { 
                \compressFullBarRests
                \override MultiMeasureRest.expand-limit = #1
                \set Staff.instrumentName = "POET"
                \set Staff.shortInstrumentName = #""
                \override DynamicLineSpanner #'staff-padding = #3.0
                %\override DynamicLineSpanner #'Y-extent = #'(-1.5 . 1.5)
                \accidentalStyle modern-voice-cautionary
                \clef bass
                \keepWithTag #'(OneTime Part) \transpose c c { \INSTRUMENTGlobalCoda }
            }
        >>
        \layout {
            indent = 1.875\cm
            short-indent = .25\cm
        }
    }
}

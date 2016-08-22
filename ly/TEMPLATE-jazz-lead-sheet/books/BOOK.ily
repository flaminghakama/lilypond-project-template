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
    	\keepWithTag #'(SCORE PDF
	    InstrumentINSTRUMENT
	    SegmentOne
	    SegmentTwo
	) <<
            \new ChordNames \transpose f c { \chordsSong  }
            \new Staff = "INSTRUMENT" { 
                \compressFullBarRests
                \override MultiMeasureRest.expand-limit = #1
                \set Staff.instrumentName = ""
                \set Staff.shortInstrumentName = #""
                \override DynamicLineSpanner #'staff-padding = #3.0
                %\override DynamicLineSpanner #'Y-extent = #'(-1.5 . 1.5)
                \accidentalStyle modern-voice-cautionary
                \clef treble
                \keepWithTag #'(OneTime Part) \transpose c c { \INSTRUMENTGlobalSong }
            }
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
    	\keepWithTag #'(SCORE PDF
	    InstrumentINSTRUMENT
	    SegmentCoda
	) <<
            \set Score.currentBarNumber = #113
            \new ChordNames \transpose c c { \chordsCoda  }
            \new Staff = "INSTRUMENT" { 
                \compressFullBarRests
                \override MultiMeasureRest.expand-limit = #1
                \set Staff.instrumentName = ""
                \set Staff.shortInstrumentName = #""
                \override DynamicLineSpanner #'staff-padding = #3.0
                %\override DynamicLineSpanner #'Y-extent = #'(-1.5 . 1.5)
                \accidentalStyle modern-voice-cautionary
                \override Staff.TimeSignature.stencil = ##f
                \clef treble
                \keepWithTag #'(OneTime Part) \transpose c c { \INSTRUMENTGlobalCoda }
            }
        >>
        \layout {
            indent = 1.875\cm
            short-indent = .25\cm
        }
    }
}

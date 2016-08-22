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
    \score {
    	\keepWithTag #'(SCORE PDF
 	    SectionRhythm
	    InstrumentMelody
	    InstrumentBass
	    SegmentOne
	    SegmentTwo
	) <<
            \new StaffGroup = "melody" << 
                \new Staff = "melody" { 
                    \set Staff.instrumentName = #""
                    \set Staff.shortInstrumentName = #""
                    \accidentalStyle modern-voice-cautionary
                    \transpose c c { \melodyGlobal }
                }
                \new ChordNames \transpose c c { \chordsGlobal }
                \new Staff = "bass" { 
                    \set Staff.instrumentName = #""
                    \set Staff.shortInstrumentName = #""
                    \accidentalStyle modern-voice-cautionary
                    \transpose c c { \bassGlobal }
                }
            >>
        >>
        \layout { 
            indent = 3.15\cm
            short-indent = 1.25\cm
        }
    }
}

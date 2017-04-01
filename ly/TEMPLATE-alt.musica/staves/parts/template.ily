        \new Staff = "flute" { 
            \compressFullBarRests
            \override MultiMeasureRest.expand-limit = #1
            \set Staff.instrumentName = ""
            \set Staff.shortInstrumentName = #""
            \override DynamicLineSpanner #'staff-padding = #3.0
            %\override DynamicLineSpanner #'Y-extent = #'(-1.5 . 1.5)
            \accidentalStyle modern-voice-cautionary
            \clef treble
            \keepWithTag #'(PDF Part Woodwinds Flute) \transpose c c { \fluteGlobal }
        }
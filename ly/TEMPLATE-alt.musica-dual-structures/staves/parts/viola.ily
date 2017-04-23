        \new ChordNames \transpose c c { \chordsPart }
        \new Staff = "viola" { 
            \compressFullBarRests
            \override MultiMeasureRest.expand-limit = #1
            \set Staff.instrumentName = ""
            \set Staff.shortInstrumentName = #""
            \override DynamicLineSpanner #'staff-padding = #3.0
            \accidentalStyle modern-voice-cautionary
            \clef alto
            \transpose c c { \violaGlobal }
        }
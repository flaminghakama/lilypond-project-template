        \new ChordNames \transpose a c { \chordsPart }
        \new Staff = "clarinet" { 
            \compressFullBarRests
            \override MultiMeasureRest.expand-limit = #1
            \set Staff.instrumentName = ""
            \set Staff.shortInstrumentName = #""
            \override DynamicLineSpanner #'staff-padding = #3.0
            \accidentalStyle modern-voice-cautionary
            \clef treble
            \transpose a, c { \clarinetGlobal }
        }
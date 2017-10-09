        \new Staff = "INSTRUMENT" { 
            \compressFullBarRests
            \override MultiMeasureRest.expand-limit = #1
            \set Staff.instrumentName = "POET"
            \set Staff.shortInstrumentName = #"POET"
            \override DynamicLineSpanner #'staff-padding = #3.0
            \accidentalStyle modern-voice-cautionary
            \clef treble
            \transpose c c { \INSTRUMENTGlobalSong }
        }
        \new ChordNames \transpose c c { \chordsLead }
        \new Staff = "voice" { 
	            \compressFullBarRests
	            \override MultiMeasureRest.expand-limit = #1
	            \set Staff.instrumentName = ""
	            \set Staff.shortInstrumentName = #""
	            \override DynamicLineSpanner #'staff-padding = #3.0
	            \accidentalStyle modern-voice-cautionary
                \new Voice = "lead" {
                    \transpose c c { 
                        \voiceGlobal
                    }
                }
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsSong } 
            }
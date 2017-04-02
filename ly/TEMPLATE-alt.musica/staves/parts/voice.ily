			\new Staff = "voice" { 
	            \compressFullBarRests
	            \override MultiMeasureRest.expand-limit = #1
	            \set Staff.instrumentName = ""
	            \set Staff.shortInstrumentName = #""
	            \override DynamicLineSpanner #'staff-padding = #3.0
	            \accidentalStyle modern-voice-cautionary
                \new Voice = "lead" {
                    \keepWithTag #'(PDF Part Voices Voice
                        SegmentIntro
                        SegmentFunk
                        SegmentAroCuban
                        SegmentSoloFunk
                        SegmentSoloAfroCuban
                        SegmentDrum
                    ) \transpose c c { 
                        \voiceGlobalSong
                    }
                }
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsSong } 
            }
	            \new Staff = "voice" { 
                    \set Staff.instrumentName = #"Voice"
                    \set Staff.shortInstrumentName = #"V."
                    \accidentalStyle modern-voice-cautionary
                    \clef treble
                    \new Voice = "lead" {
                        \keepWithTag #'(PDF Part Voices Voice
                            SegmentIntro
                            SegmentFunk
                            SegmentAroCuban
                            SegmentSoloFunk
                            SegmentSoloAfroCuban
                            SegmentDrum
                        ) \transpose c c { 
                            \voiceGlobal
                        }
                    }
                }
                \new Lyrics \with { alignAboveContext = "staff" } {
                    \lyricsto "lead" { \lyricsSong } 
                }
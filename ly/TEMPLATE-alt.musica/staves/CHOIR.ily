                \new Staff = "INSTRUMENT" { 
                    \set Staff.instrumentName = #""
                    \set Staff.shortInstrumentName = #""
                    \accidentalStyle modern-voice-cautionary
                    \new Voice = "lead" {
                        \keepWithTag #'(Score Choir Voice
                            SegmentIntro
                            SegmentFunk
                            SegmentAroCuban
                            SegmentSoloFunk
                            SegmentSoloAfroCuban
                            SegmentDrum
                        ) \transpose c c { 
                            \INSTRUMENTGlobalSEGMENT
                        }
                    }
                }
                \new Lyrics \with { alignAboveContext = "staff" } {
                    \lyricsto "lead" { \lyricsSEGMENT } 
                }

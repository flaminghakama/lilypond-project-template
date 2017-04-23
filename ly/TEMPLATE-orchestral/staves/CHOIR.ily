                \new Staff = "INSTRUMENT" { 
                    \set Staff.instrumentName = #""
                    \set Staff.shortInstrumentName = #""
                    \accidentalStyle modern-voice-cautionary
                    \new Voice = "lead" {
                        \keepWithTag #'(OneTime Score) \transpose c c { 
                            \INSTRUMENTGlobalSEGMENT
                        }
                    }
                }
                \new Lyrics \with { alignAboveContext = "staff" } {
                    \lyricsto "lead" { \lyricsSEGMENT } 
                }

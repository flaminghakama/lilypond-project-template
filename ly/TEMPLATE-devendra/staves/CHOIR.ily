                \new Staff = "INSTRUMENT" { 
                    \set Staff.instrumentName = #""
                    \set Staff.shortInstrumentName = #""
                    \accidentalStyle modern-voice-cautionary
                    \new Voice = "lead" {
                        \transpose c c { 
                            \INSTRUMENTGlobalSEGMENT
                        }
                    }
                }
                \new Lyrics \with { alignAboveContext = "staff" } {
                    \lyricsto "lead" { \lyricsSEGMENT } 
                }

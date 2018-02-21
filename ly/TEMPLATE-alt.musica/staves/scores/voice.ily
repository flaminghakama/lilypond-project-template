	            \new Staff = "voice" \with { \magnifyStaff #4/7 } {
                    \set Staff.instrumentName = #"Voice"
                    \set Staff.shortInstrumentName = #"V."
                    \accidentalStyle modern-voice-cautionary
                    \clef treble
                    \new Voice = "lead" {
                        \transpose c c { 
                            \voiceGlobal
                        }
                    }
                }
                \new Lyrics \with { alignAboveContext = "staff" } {
                    \lyricsto "lead" { \lyricsSong } 
                }
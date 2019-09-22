        %\new ChordNames \transpose c c { \chordsVoice }
        \new Staff = "voice" { 
            \include "ly/rising/staves/parts/staff-defaults.ily"
            \new Voice = "lead" {
                \transpose c c { 
                    \autoPageBreaksOff
                    \voiceGlobal
                }
            }
        }
        \new Lyrics \with { alignAboveContext = "staff" } {
            \lyricsto "lead" { \lyricsSong } 
        }

        \new ChordNames \transpose c c { \chordsVoice }
        %\include "ly/rising/staves/parts/beat-pattern.ily"
        \new Staff = "voice" { 
            \include "ly/rising/staves/parts/staff-defaults.ily"
            \override DynamicLineSpanner #'staff-padding = #3.0
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

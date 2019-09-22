        \new Staff = "voice" \with { \magnifyStaff #4/7 } {
            \set Staff.instrumentName = #"Voice"
            \set Staff.shortInstrumentName = #"V."
            \include "ly/rising/staves/scores/staff-defaults.ily"
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
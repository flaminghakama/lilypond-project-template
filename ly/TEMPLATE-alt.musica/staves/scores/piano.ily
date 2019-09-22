        \new ChordNames \transpose c c { \chordsSong }
        \new PianoStaff = "piano" \with {
            instrumentName = "Piano"
            shortInstrumentName = "P."
            magnifyStaff = #4/7
        }
        <<
            \include "ly/rising/staves/scores/staff-defaults.ily"
            \new Staff = "upper" <<
                \clef treble
                \new Voice = "first" \pianoVoiceOne
                \new Voice = "second" \pianoVoiceTwo
            >>
            \new Staff = "lower" <<
                \clef bass
                \new Voice = "third" \pianoVoiceThree
                \new Voice = "fourth" \pianoVoiceFour
            >>
        >>

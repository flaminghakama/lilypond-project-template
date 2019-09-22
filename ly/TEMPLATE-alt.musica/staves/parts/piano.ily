        \new ChordNames \transpose c c { \chordsSong }
        \new PianoStaff = "piano" \with {
            instrumentName = ""
            shortInstrumentName = ""
        }
        <<
            \include "ly/rising/staves/parts/staff-defaults.ily"
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

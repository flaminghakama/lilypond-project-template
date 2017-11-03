        \new PianoStaff = "piano" <<
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

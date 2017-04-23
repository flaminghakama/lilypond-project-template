        \new PianoStaff = "piano" \with {
            instrumentName = "Piano"
        }
        \keepWithTag #'(MIDI Score Percussion Piano
                SegmentIntro
                SegmentFunk
                SegmentAroCuban
                SegmentSoloFunk
                SegmentSoloAfroCuban
                SegmentDrum
            ) <<
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

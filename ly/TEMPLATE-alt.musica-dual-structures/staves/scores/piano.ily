        \new ChordNames \transpose c c { \chordsSong }
        \new PianoStaff = "piano" \with {
            instrumentName = "Piano"
            shortInstrumentName = "P."
        }
        <<
            \accidentalStyle modern-voice-cautionary
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

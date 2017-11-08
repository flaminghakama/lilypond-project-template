        \new ChordNames \transpose bf c { \chordsPart }
        \new Staff = "tenorSaxophone" { 
            \set Staff.instrumentName = \markup {
                \center-column { 
                    "Tenor Saxophone"
                    \line { "in B" \smaller \flat }
                }
            }
            \set Staff.shortInstrumentName = #"T.S."
            \accidentalStyle modern-voice-cautionary
            \clef treble
            \transpose bf, c { \tenorSaxophoneGlobal }
        }
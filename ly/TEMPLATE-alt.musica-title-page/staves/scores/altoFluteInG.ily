        \new ChordNames \transpose g c { \chordsPart }
        \new Staff = "altoFlute" \with { \magnifyStaff #4/7 } { 
            \set Staff.instrumentName = \markup {
                \center-column { 
                    "Alto Flute"
                    "in G"
                }
            }
            \set Staff.shortInstrumentName = #"A.Fl."
            \accidentalStyle modern-voice-cautionary
            \clef treble
            \transpose g, c { \altoFluteGlobal }
        }
 
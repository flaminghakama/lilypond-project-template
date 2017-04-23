        \new ChordNames \transpose g c { \chordsPart }
        \new Staff = "altoFlute" { 
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
 
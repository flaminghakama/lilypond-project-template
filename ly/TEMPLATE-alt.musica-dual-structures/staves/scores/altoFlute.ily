        \new ChordNames \transpose c c { \chordsPart }
        \new Staff = "altoFlute" { 
            \set Staff.instrumentName = "Alto Flute"
            \set Staff.shortInstrumentName = #"A.Fl."
            \accidentalStyle modern-voice-cautionary
            \clef treble
            \transpose c c { \altoFluteGlobal }
        }
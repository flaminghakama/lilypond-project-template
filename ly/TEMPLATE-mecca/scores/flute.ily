        \new ChordNames \transpose c c { \chordsPart }
        \new Staff = "flute" { 
            \set Staff.instrumentName = "Flute"
            \set Staff.shortInstrumentName = #"Fl."
            \accidentalStyle modern-voice-cautionary
            \clef treble
            \transpose c c { \fluteGlobal }
        }
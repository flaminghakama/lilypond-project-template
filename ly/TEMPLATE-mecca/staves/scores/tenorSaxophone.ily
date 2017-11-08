        \new ChordNames \transpose c c { \chordsPart }
        \new Staff = "tenorSaxophone" { 
            \set Staff.instrumentName = "Tenor Saxophone"
            \set Staff.shortInstrumentName = #"T.S."
            \accidentalStyle modern-voice-cautionary
            \clef treble
            \transpose c c { \tenorSaxophoneGlobal }
        }
\book {
    \paper {

        top-margin = #10
        right-margin = #17

        % First page spacing after header
        markup-system-spacing #'padding = #6

        % Subsequent page spacing after header
        top-system-spacing #'minimum-distance = #18

        % Spacing in between systems
        system-system-spacing #'minimum-distance = #12
    }
    \header {
        subtitle = ""
        poet = "POET"
    }
    \score {
        <<
            \new StaffGroup = "winds" << 
                \new ChordNames \transpose g c { \chordsSongScore \chordsCoda }
                \new Staff = "flute" { 
                    \set Staff.instrumentName = #"Alto Flute in G"
                    \set Staff.shortInstrumentName = #"A.Fl."
                    \accidentalStyle modern-voice-cautionary
                    \keepWithTag #'(OneTime Score) \transpose c c { 
                        \fluteGlobalSong 
                        \pageBreak
                        \fluteGlobalCoda
                    }
                }
                \new ChordNames \transpose f c { \chordsSongScore \chordsCoda }
                \new Staff = "englishHorn" { 
                    \set Staff.instrumentName = #"English Horn in F"
                    \set Staff.shortInstrumentName = #"E.H."
                    \accidentalStyle modern-voice-cautionary
                    \keepWithTag #'(OneTime Score) \transpose f c { 
                        \englishHornGlobalSong                 
                        \englishHornGlobalCoda 
                    }
                }
                \new ChordNames \transpose bf c { \chordsSongScore \chordsCoda }
                \new Staff = "bassClarinet" { 
                    \set Staff.instrumentName = #"Bass Clarinet in Bb"
                    \set Staff.shortInstrumentName = #"B.Cl."
                    \clef treble
                    \accidentalStyle modern-voice-cautionary
                    \keepWithTag #'(OneTime Score) \transpose bf,, c { 
                        \bassClarinetGlobalSong
                        \bassClarinetGlobalCoda
                    }
                }
            >>

            <<
                \new ChoirStaff = "vocal" << 
                    \new Staff = "voice" { 
                        \set Staff.instrumentName = #"Voice"
                        \set Staff.shortInstrumentName = #""
                        \accidentalStyle modern-voice-cautionary
                        \new Voice = "lead" {
                            \keepWithTag #'(OneTime Score) \transpose c c { 
                                \voiceGlobalSong
                                \voiceGlobalCoda
                            }
                        }
                    }
                    \new Lyrics \with { alignAboveContext = "staff" } {
                        \lyricsto "lead" { \lyricsSong } 
                    }
                >>
            >>

            %{
            \new StaffGroup = "rhythm" << 
                \new DrumStaff = "clave" \with {
                    drumStyleTable = #percussion-style
                    \override StaffSymbol.line-count = #1
                 } {
                    \set DrumStaff.instrumentName = #"Clave"
                    \set DrumStaff.shortInstrumentName = #"C."
                    \keepWithTag #'(OneTime Score) \transpose c c { 
                        \claveGlobalSong
                        \claveGlobalCoda
                    }
                }
            >>
            %}
            
            \new StaffGroup = "strings" << 
                \new ChordNames \transpose c c { \chordsSongScore \chordsCoda }
                \new Staff = "violin" { 
                    \set Staff.instrumentName = #"Violin"
                    \set Staff.shortInstrumentName = #"V."
                    \accidentalStyle modern-voice-cautionary
                    \keepWithTag #'(OneTime Score) \transpose c c { 
                        \violinGlobalSong
                        \violinGlobalCoda
                    }
                }
                \new Staff = "bass" { 
                    \set Staff.instrumentName = #"Bass"
                    \set Staff.shortInstrumentName = #"B."
                    \clef bass
                    \accidentalStyle modern-voice-cautionary
                    \keepWithTag #'(OneTime Score) \transpose c c { 
                        \bassGlobalSong
                        \bassGlobalCoda
                    }
                }
            >>

        >>
        \layout { 
            indent = 3.15\cm
            short-indent = 1.25\cm
        }
    }
}

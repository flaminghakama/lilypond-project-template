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
                \new ChordNames \transpose ef c { \chordsSong \chordsCoda }
                \new Staff = "altoSax" { 
                    \set Staff.instrumentName = #"Alto Saxophone in Eb"
                    \set Staff.shortInstrumentName = #"AS"
                    \accidentalStyle modern-voice-cautionary
                    \keepWithTag #'(OneTime Score) \transpose c c { 
                        \altoSaxGlobalSong 
                        \pageBreak
                        \altoSaxGlobalCoda
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
            
            \new StaffGroup = "strings" << 
                \new ChordNames \transpose c c { \chordsSongScore \chordsCoda }
                \new Staff = "violinSolo" { 
                    \set Staff.instrumentName = #"Violin Solo"
                    \set Staff.shortInstrumentName = #"VS"
                    \accidentalStyle modern-voice-cautionary
                    \keepWithTag #'(OneTime Score) \transpose c c { 
                        \violinSoloGlobalSong
                        \violinSoloGlobalCoda
                    }
                }
                \new Staff = "violinI" { 
                    \set Staff.instrumentName = #"Violin I"
                    \set Staff.shortInstrumentName = #"VI"
                    \accidentalStyle modern-voice-cautionary
                    \keepWithTag #'(OneTime Score) \transpose c c { 
                        \violinIGlobalSong
                        \violinIGlobalCoda
                    }
                }
                \new Staff = "violinII" { 
                    \set Staff.instrumentName = #"Violin II"
                    \set Staff.shortInstrumentName = #"VII"
                    \accidentalStyle modern-voice-cautionary
                    \keepWithTag #'(OneTime Score) \transpose c c { 
                        \violinIIGlobalSong
                        \violinIIGlobalCoda
                    }
                }
                \new Staff = "viola" { 
                    \set Staff.instrumentName = #"Viola"
                    \set Staff.shortInstrumentName = #"Va"
                    \accidentalStyle modern-voice-cautionary
                    \clef alto
                    \keepWithTag #'(OneTime Score) \transpose c c { 
                        \violaGlobalSong
                        \violaGlobalCoda
                    }
                }
                \new Staff = "cello" { 
                    \set Staff.instrumentName = #"Violincello"
                    \set Staff.shortInstrumentName = #"VC"
                    \accidentalStyle modern-voice-cautionary
                    \clef bass
                    \keepWithTag #'(OneTime Score) \transpose c c { 
                        \celloGlobalSong
                        \celloGlobalCoda
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
            indent = 2.25\cm
            short-indent = 1.25\cm
        }
    }
}

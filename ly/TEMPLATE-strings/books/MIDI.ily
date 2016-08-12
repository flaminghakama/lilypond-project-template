\book {
    \score {
        <<
            \new Staff = "altoSax" { 
                \set Staff.instrumentName = #"Alto Saxophone in Eb"
                \keepWithTag #'(OneTime MIDI) \transpose c c { 
                    \altoSaxGlobalSong 
                    \altoSaxGlobalCoda
                }
            }
            \new ChoirStaff = "vocal" << 
                \new Staff = "voice" { 
                    \set Staff.instrumentName = #"Voice"
                    \new Voice = "lead" {
                        \keepWithTag #'(OneTime MIDI) \transpose c c { 
                            \voiceGlobalSong
                            \voiceGlobalCoda
                        }
                    }
                }
            >>
            \new ChordNames \transpose c c { \chordsSongScore \chordsCoda }
            \new Staff = "violinSolo" { 
                \set Staff.instrumentName = #"Violin Solo"
                \keepWithTag #'(OneTime MIDI) \transpose c c { 
                    \violinSoloGlobalSong
                    \violinSoloGlobalCoda
                }
            }
            \new Staff = "violinI" { 
                \set Staff.instrumentName = #"Violin I"
                \keepWithTag #'(OneTime MIDI) \transpose c c { 
                    \violinIGlobalSong
                    \violinIGlobalCoda
                }
            }
            \new Staff = "violinII" { 
                \set Staff.instrumentName = #"Violin II"
                \keepWithTag #'(OneTime MIDI) \transpose c c { 
                    \violinIIGlobalSong
                    \violinIIGlobalCoda
                }
            }
            \new Staff = "viola" { 
                \set Staff.instrumentName = #"Viola"
                \keepWithTag #'(OneTime MIDI) \transpose c c { 
                    \violaGlobalSong
                    \violaGlobalCoda
                }
            }
            \new Staff = "cello" { 
                \set Staff.instrumentName = #"Violincello"
                \keepWithTag #'(OneTime MIDI) \transpose c c { 
                    \celloGlobalSong
                    \celloGlobalCoda
                }
            }
            \new Staff = "bass" { 
                \set Staff.instrumentName = #"Bass"
                \keepWithTag #'(OneTime MIDI) \transpose c c { 
                    \bassGlobalSong
                    \bassGlobalCoda
                }
            }
        >>
        \midi { }
    }
}

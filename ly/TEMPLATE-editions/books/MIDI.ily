\book {
    \score {
        <<
            \new ChordNames \keepWithTag #'(OneTime Score MIDI
                    SegmentOne
                    %SegmentTwo
                    %SegmentThree
                    %SegmentFour
                ) \transpose c c { \chordsSong }
            \new StaffGroup = "voice" << 
                \new Staff = "voice" { 
                    \set Staff.instrumentName = #"Voice"
                    \keepWithTag #'(OneTime Score MIDI
                        Transcription
                        QuartetFeature
                        QuartetAccompaniment
                        %Orchesteration
                    ) \transpose c c { 
                        \voiceGlobalSong
                    }
                }
            >>
            \new Staff = "violinI" { 
                \set Staff.instrumentName = #"Violin I"
                \keepWithTag #'(OneTime Score MIDI
                    SegmentOne
                    %SegmentTwo
                    %SegmentThree
                    %SegmentFour
                ) \transpose c c { 
                    \violinIGlobalSong                    
                }
            }
            \new Staff = "violinII" { 
                \set Staff.instrumentName = #"Violin II"
                \keepWithTag #'(OneTime Score MIDI
                    SegmentOne
                    %SegmentTwo
                    %SegmentThree
                    %SegmentFour
                ) \transpose c c { 
                    \violinIIGlobalSong                    
                }
            }
            \new Staff = "viola" { 
                \set Staff.instrumentName = #"Viola"
                \keepWithTag #'(OneTime Score MIDI
                    SegmentOne
                    %SegmentTwo
                    %SegmentThree
                    %SegmentFour
                ) \transpose c c { 
                    \violaGlobalSong                    
                }
            }
            \new Staff = "cello" { 
                \set Staff.instrumentName = #"Violincello"
                                \keepWithTag #'(OneTime Score MIDI
                    SegmentOne
                    %SegmentTwo
                    %SegmentThree
                    %SegmentFour
                ) \transpose c c { 
                    \celloGlobalSong                    
                }
            }
        >>
        \midi { }
    }
}

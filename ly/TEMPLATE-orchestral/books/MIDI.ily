\book {
    \score {
        <<
            \new StaffGroup = "winds" << 
                \new Staff = "flute" { 
                    \set Staff.instrumentName = #"Flute"
                    \keepWithTag #'(OneTime MIDI
                        SegmentZero
                        SegmentA
                        SegmentB
                        SegmentC
                        SegmentD
                        SegmentE
                        SegmentF
                        SegmentG
                        SegmentH
                        SegmentI
                        SegmentJ
                        SegmentK
                        SegmentL
                        SegmentM
                        SegmentN
                        SegmentO
                        SegmentP
                        SegmentQ
                        SegmentR
                        SegmentS
                        SegmentT
                    ) \transpose c, c { 
                        \fluteGlobalHead
                    }
                }
                \new Staff = "englishHorn" { 
                    \set Staff.instrumentName = #"English Horn"
                    \keepWithTag #'(OneTime MIDI
                        SegmentZero
                        SegmentA
                        SegmentB
                        SegmentC
                        SegmentD
                        SegmentE
                        SegmentF
                        SegmentG
                        SegmentH
                        SegmentI
                        SegmentJ
                        SegmentK
                        SegmentL
                        SegmentM
                        SegmentN
                        SegmentO
                        SegmentP
                        SegmentQ
                        SegmentR
                        SegmentS
                        SegmentT
                    ) \transpose c, c { 
                        \englishHornGlobalHead
                    }
                }
                \new Staff = "bassClarinet" { 
                    \set Staff.instrumentName = #"Bass Clarinet"
                    \keepWithTag #'(OneTime MIDI
                        SegmentZero
                        SegmentA
                        SegmentB
                        SegmentC
                        SegmentD
                        SegmentE
                        SegmentF
                        SegmentG
                        SegmentH
                        SegmentI
                        SegmentJ
                        SegmentK
                        SegmentL
                        SegmentM
                        SegmentN
                        SegmentO
                        SegmentP
                        SegmentQ
                        SegmentR
                        SegmentS
                        SegmentT
                    ) \transpose c, c  { 
                        \bassClarinetGlobalHead
                    }
                }
            >>
            \new StaffGroup = "rhythm" << 
                %{ 
                \new DrumStaff = "clave" \with {
                    drumStyleTable = #percussion-style
                    \override StaffSymbol.line-count = #1
                 } {
                    \set DrumStaff.instrumentName = #"Clave"
                    \set DrumStaff.shortInstrumentName = #"C."
                    \keepWithTag #'(OneTime MIDI) \transpose c c { 
                        \claveGlobalHead
                    }
                }
                %}
                \new ChordNames \transpose c c { \headChordsScore }
                \new Staff = "bass" { 
                    \set Staff.instrumentName = #"Bass"
                    \keepWithTag #'(OneTime MIDI
                        SegmentZero
                        SegmentA
                        SegmentB
                        SegmentC
                        SegmentD
                        SegmentE
                        SegmentF
                        SegmentG
                        SegmentH
                        SegmentI
                        SegmentJ
                        SegmentK
                        SegmentL
                        SegmentM
                        SegmentN
                        SegmentO
                        SegmentP
                        SegmentQ
                        SegmentR
                        SegmentS
                        SegmentT
                    ) \transpose c, c  { 
                        \bassGlobalHead
                    }
                }
            >>
%{
    
            \new StaffGroup = "voice" << 
                \new ChordNames \transpose c c { \HeadChords }
                \new Staff = "voice" { 
                    \set Staff.instrumentName = #"Voice"
                    \keepWithTag #'(OneTime MIDI) \transpose c c { 
                        \voiceGlobalHead
                    }
                }
            >>
%}
        >>
        \midi { }
    }
}

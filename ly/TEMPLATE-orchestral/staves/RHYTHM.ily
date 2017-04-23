                \new DrumStaff = "INSTRUMENT" \with {
                    drumStyleTable = #percussion-style
                    \override StaffSymbol.line-count = #1
                 } {
                    \set DrumStaff.instrumentName = #"Clave"
                    \set DrumStaff.shortInstrumentName = #"C."
                    \keepWithTag #'(OneTime Part
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
                    ) \transpose TRANSPOSITION { 
                        \INSTRUMENTGlobalSEGMENT
                    }
                }
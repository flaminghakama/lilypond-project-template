                \new DrumStaff = "INSTRUMENT" \with {
                    drumStyleTable = #percussion-style
                    \override StaffSymbol.line-count = #1
                 } {
                    \set DrumStaff.instrumentName = #"Clave"
                    \set DrumStaff.shortInstrumentName = #"C."
                    \transpose TRANSPOSITION { 
                        \INSTRUMENTGlobalSEGMENT
                    }
                }
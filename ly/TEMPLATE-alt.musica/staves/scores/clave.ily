			\new DrumStaff = "clave" \with {
                drumStyleTable = #percussion-style
                \override StaffSymbol.line-count = #1
             } {
                \set DrumStaff.instrumentName = #"Clave"
                \set DrumStaff.shortInstrumentName = #"Cv."
                \keepWithTag #'(PDF Score Percussion Clave) \transpose c c { 
                    \claveGlobalHead
                }
            }
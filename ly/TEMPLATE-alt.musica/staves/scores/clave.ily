			\new DrumStaff = "clave" \with {
                drumStyleTable = #percussion-style
                \override StaffSymbol.line-count = #1
                \magnifyStaff #4/7 
             } {
                \set DrumStaff.instrumentName = #"Clave"
                \set DrumStaff.shortInstrumentName = #"Cv."
                \transpose c c { 
                    \claveGlobal
                }
            }
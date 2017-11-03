            \new ChordNames \transpose c c { \chordsSong }
			\new DrumStaff = "clave" \with {
                drumStyleTable = #percussion-style
                \override StaffSymbol.line-count = #1
             } {
                \compressFullBarRests
                \override MultiMeasureRest.expand-limit = #1
                \set Staff.instrumentName = ""
                \set Staff.shortInstrumentName = #""
                \override DynamicLineSpanner #'staff-padding = #3.0
                \transpose c c { 
                    \claveGlobal
                }
            }
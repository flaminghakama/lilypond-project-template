        \new ChordNames \transpose c c { \chordsSong }
		\new DrumStaff = "clave" \with {
            drumStyleTable = #percussion-style
            \override StaffSymbol.line-count = #1
         } {
            \include "ly/rising/staves/parts/staff-defaults.ily"
            \transpose c c { 
                \claveGlobal
            }
        }
			\new DrumStaff = "clave" {
                \set DrumStaff.instrumentName = #"Clave"
                \keepWithTag #'(MIDI Score Percussion Clave) \transpose c c { \claveGlobalHead }
            }
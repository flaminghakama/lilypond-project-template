			\new Staff = "voice" { 
                \set Staff.instrumentName = "Voice"
                \keepWithTag #'(MIDI Score Voices Voice) \transpose c c { \voiceGlobalSong }
            }
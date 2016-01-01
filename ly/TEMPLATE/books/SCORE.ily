\book {
    \paper {

        top-margin = #10
        right-margin = #17

        % First page spacing after header
        markup-system-spacing #'padding = #6

        % Subsequent page spacing after header
        top-system-spacing #'minimum-distance = #18

        % Spacing in between systems
        system-system-spacing #'minimum-distance = #12
    }
    \header {
        subtitle = ""
        poet = "POET"
    }
    \score {
      <<
        \new StaffGroup = "winds" << 
            \new Staff = "flute" { 
                \set Staff.instrumentName = #"Flute"
                \set Staff.shortInstrumentName = #"Fl."
                \accidentalStyle modern-voice-cautionary
                \keepWithTag #'(OneTime Score) \transpose c c { 
                    \fluteGlobalHead 
                    \override Staff.TimeSignature.stencil = ##f
                    \fluteGlobalSolos \pageBreak
                    \fluteGlobalCoda
                }
            }
            \new ChordNames \transpose f c { \chordsHeadScore \chordsSolo \chordsCoda }
            \new Staff = "englishHorn" { 
                \set Staff.instrumentName = #"English Horn in F"
                \set Staff.shortInstrumentName = #"E.h."
                \accidentalStyle modern-voice-cautionary
                \keepWithTag #'(OneTime Score) \transpose f c { 
                    \englishHornGlobalHead                 
                    \override Staff.TimeSignature.stencil = ##f
                    \englishHornGlobalSolos 
                    \englishHornGlobalCoda 
                }
            }
            \new ChordNames \transpose bf c { \chordsHeadScore \chordsSolo \chordsCoda }
            \new Staff = "bassClarinet" { 
                \set Staff.instrumentName = #"Bass Clarinet in Bb"
                \set Staff.shortInstrumentName = #"B.Cl."
                \clef treble
                \accidentalStyle modern-voice-cautionary
                \keepWithTag #'(OneTime Score) \transpose bf,, c { 
                    \bassClarinetGlobalHead
                    \override Staff.TimeSignature.stencil = ##f
                    \bassClarinetGlobalSolos
                    \bassClarinetGlobalCoda
                }
            }
        >>
        \new StaffGroup = "rhythm" << 
            \new DrumStaff = "clave" \with {
                drumStyleTable = #percussion-style
                \override StaffSymbol.line-count = #1
             } {
                \set DrumStaff.instrumentName = #"Clave"
                \set DrumStaff.shortInstrumentName = #"C."
                \keepWithTag #'(OneTime Score) \transpose c c { 
                    \claveGlobalHead
                    \override Staff.TimeSignature.stencil = ##f
                    \claveGlobalSolos 
                    \claveGlobalCoda
                }
            }
            \new ChordNames \transpose c c { \chordsHeadScore \chordsSolo \chordsCoda }
            \new Staff = "bass" { 
                \set Staff.instrumentName = #"Bass"
                \set Staff.shortInstrumentName = #"B."
                \clef bass
                \accidentalStyle modern-voice-cautionary
                \keepWithTag #'(OneTime Score) \transpose c c { 
                    \bassGlobalHead
                    \override Staff.TimeSignature.stencil = ##f
                    \bassGlobalSolos 
                    \bassGlobalCoda
                }
            }
        >>
      >>
      \layout { 
          indent = 3.15\cm
          short-indent = 1.25\cm
      }
   }
}

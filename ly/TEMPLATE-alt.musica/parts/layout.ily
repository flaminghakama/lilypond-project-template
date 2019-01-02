        \layout {
            indent = 1.75\cm
            short-indent = .75\cm
            \context {
                \Score
                \override Glissando.minimum-length = #4
                \override Glissando.springs-and-rods = #ly:spanner::set-spacing-rods
                \override Glissando.thickness = #2
                \override StringNumber.stencil = ##f
            }
            \context {
                \RhythmicStaff
                \remove "Time_signature_engraver"
                \remove "Clef_engraver"
                \override BarLine.transparent = ##t
                \override StaffSymbol.line-count = #0
                \consists "Measure_grouping_engraver"
            }
        }
\book {
    \paper {

        top-margin = #10
        right-margin = #17

        % First page spacing after header
        markup-system-spacing #'padding = #12

        % Subsequent page spacing after header
        top-system-spacing #'minimum-distance = #18

        % Spacing in between systems
        system-system-spacing #'minimum-distance = #8
    }
    \header {
        subtitle = ""
        poet = "Transposed Score"
    }

%{
    \bookpart {

        \header {
            title = ""
            subtitle = \markup \center-column { \vspace #1 "SegmentOne" }
            poet = ""
            composer = ""            
            arranger = ""
        }
  
        \score {
            \keepWithTag #'(Score PDF
                SegmentOne
            ) <<

                \new ChoirStaff = "vocal" << 
                    \new Staff = "voice" \with { \magnifyStaff #4/5 } { 
                        \set Staff.instrumentName = #"Voice"
                        \set Staff.shortInstrumentName = #""
                        \accidentalStyle modern-voice-cautionary
                        \override DynamicLineSpanner #'staff-padding = #3.0
                        \new Voice = "lead" {
                            \keepWithTag #'(Lead
                                SegmentOne
                            ) \transpose c c { 
                                \voiceGlobalSong
                            }
                        }
                    }
                    \new Lyrics \with { alignAboveContext = "staff" } {
                        \lyricsto "lead" { \lyricsSong } 
                    }
                >> 

                \new ChordNames \transpose c c { \chordsSong }

                \new StaffGroup = "strings" << 

                    \new Staff = "violinI" \with { \magnifyStaff #4/5 } { 
                        \set Staff.instrumentName = #"Violin I"
                        \set Staff.shortInstrumentName = #"VI"
                        \accidentalStyle modern-voice-cautionary
                        \override DynamicLineSpanner #'staff-padding = #3.0
                        \keepWithTag #'(Lead
                            SegmentOne
                        ) \transpose c c { 
                            \violinIGlobalSong
                        }
                    }
                    \new Staff = "violinII" \with { \magnifyStaff #4/5 } { 
                        \set Staff.instrumentName = #"Violin II"
                        \set Staff.shortInstrumentName = #"VII"
                        \accidentalStyle modern-voice-cautionary
                        \override DynamicLineSpanner #'staff-padding = #3.0
                        \keepWithTag #'(Score
                            SegmentOne
                        ) \transpose c c { 
                            \violinIIGlobalSong
                        }
                    }
                    \new Staff = "viola" \with { \magnifyStaff #4/5 } { 
                        \set Staff.instrumentName = #"Viola"
                        \set Staff.shortInstrumentName = #"Va"
                        \accidentalStyle modern-voice-cautionary
                        \override DynamicLineSpanner #'staff-padding = #3.0
                        \clef alto
                        \keepWithTag #'(Score
                            SegmentOne
                        ) \transpose c c { 
                            \violaGlobalSong
                        }
                    }
                    \new Staff = "cello" \with { \magnifyStaff #4/5 } { 
                        \set Staff.instrumentName = #"'Cello"
                        \set Staff.shortInstrumentName = #"'C"
                        \accidentalStyle modern-voice-cautionary
                        \override DynamicLineSpanner #'staff-padding = #3.0
                        \clef bass
                        \keepWithTag #'(Score
                            SegmentOne
                        ) \transpose c c { 
                            \celloGlobalSong
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
%}

%{
    \bookpart {

        \header {
            title = ""
            subtitle = \markup \center-column { \vspace #1 "SegmentTwo" }
            poet = ""
            composer = ""            
            arranger = ""
        }
  
        \score {
            \keepWithTag #'(Score PDF
                SegmentTwo
            ) <<

                \new ChoirStaff = "vocal" << 
                    \new Staff = "voice" \with { \magnifyStaff #4/5 } { 
                        \set Staff.instrumentName = #"Voice"
                        \set Staff.shortInstrumentName = #""
                        \accidentalStyle modern-voice-cautionary
                        \override DynamicLineSpanner #'staff-padding = #3.0
                        \new Voice = "lead" {
                            \keepWithTag #'(Lead
                                SegmentTwo
                            ) \transpose c c { 
                                \voiceGlobalSong
                            }
                        }
                    }
                    \new Lyrics \with { alignAboveContext = "staff" } {
                        \lyricsto "lead" { \lyricsSong } 
                    }
                >> 

                \new ChordNames \transpose c c { \chordsSong }

                \new StaffGroup = "strings" << 

                    \new Staff = "violinI" \with { \magnifyStaff #4/5 } { 
                        \set Staff.instrumentName = #"Violin I"
                        \set Staff.shortInstrumentName = #"VI"
                        \accidentalStyle modern-voice-cautionary
                        \override DynamicLineSpanner #'staff-padding = #3.0
                        \keepWithTag #'(Lead
                            SegmentTwo
                        ) \transpose c c { 
                            \violinIGlobalSong
                        }
                    }
                    \new Staff = "violinII" \with { \magnifyStaff #4/5 } { 
                        \set Staff.instrumentName = #"Violin II"
                        \set Staff.shortInstrumentName = #"VII"
                        \accidentalStyle modern-voice-cautionary
                        \override DynamicLineSpanner #'staff-padding = #3.0
                        \keepWithTag #'(Score
                            SegmentTwo
                        ) \transpose c c { 
                            \violinIIGlobalSong
                        }
                    }
                    \new Staff = "viola" \with { \magnifyStaff #4/5 } { 
                        \set Staff.instrumentName = #"Viola"
                        \set Staff.shortInstrumentName = #"Va"
                        \accidentalStyle modern-voice-cautionary
                        \override DynamicLineSpanner #'staff-padding = #3.0
                        \clef alto
                        \keepWithTag #'(Score
                            SegmentTwo
                        ) \transpose c c { 
                            \violaGlobalSong
                        }
                    }
                    \new Staff = "cello" \with { \magnifyStaff #4/5 } { 
                        \set Staff.instrumentName = #"'Cello"
                        \set Staff.shortInstrumentName = #"'C"
                        \accidentalStyle modern-voice-cautionary
                        \override DynamicLineSpanner #'staff-padding = #3.0
                        \clef bass
                        \keepWithTag #'(Score
                            SegmentTwo
                        ) \transpose c c { 
                            \celloGlobalSong
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
%}

%{
    \bookpart {

        \header {
            title = ""
            subtitle = \markup \center-column { \vspace #1 "SegmentThree" }
            poet = ""
            composer = ""            
            arranger = ""
        }
  
        \score {
            \keepWithTag #'(Score PDF
                SegmentThree
            ) <<

                \new ChoirStaff = "vocal" << 
                    \new Staff = "voice" \with { \magnifyStaff #4/5 } { 
                        \set Staff.instrumentName = #"Voice"
                        \set Staff.shortInstrumentName = #""
                        \accidentalStyle modern-voice-cautionary
                        \override DynamicLineSpanner #'staff-padding = #3.0
                        \new Voice = "lead" {
                            \keepWithTag #'(Lead
                                SegmentThree
                            ) \transpose c c { 
                                \voiceGlobalSong
                            }
                        }
                    }
                    \new Lyrics \with { alignAboveContext = "staff" } {
                        \lyricsto "lead" { \lyricsSong } 
                    }
                >> 

                \new ChordNames \transpose c c { \chordsSong }

                \new StaffGroup = "strings" << 

                    \new Staff = "violinI" \with { \magnifyStaff #4/5 } { 
                        \set Staff.instrumentName = #"Violin I"
                        \set Staff.shortInstrumentName = #"VI"
                        \accidentalStyle modern-voice-cautionary
                        \override DynamicLineSpanner #'staff-padding = #3.0
                        \keepWithTag #'(Lead
                            SegmentThree
                        ) \transpose c c { 
                            \violinIGlobalSong
                        }
                    }
                    \new Staff = "violinII" \with { \magnifyStaff #4/5 } { 
                        \set Staff.instrumentName = #"Violin II"
                        \set Staff.shortInstrumentName = #"VII"
                        \accidentalStyle modern-voice-cautionary
                        \override DynamicLineSpanner #'staff-padding = #3.0
                        \keepWithTag #'(Score
                            SegmentThree
                        ) \transpose c c { 
                            \violinIIGlobalSong
                        }
                    }
                    \new Staff = "viola" \with { \magnifyStaff #4/5 } { 
                        \set Staff.instrumentName = #"Viola"
                        \set Staff.shortInstrumentName = #"Va"
                        \accidentalStyle modern-voice-cautionary
                        \override DynamicLineSpanner #'staff-padding = #3.0
                        \clef alto
                        \keepWithTag #'(Score
                            SegmentThree
                        ) \transpose c c { 
                            \violaGlobalSong
                        }
                    }
                    \new Staff = "cello" \with { \magnifyStaff #4/5 } { 
                        \set Staff.instrumentName = #"'Cello"
                        \set Staff.shortInstrumentName = #"'C"
                        \accidentalStyle modern-voice-cautionary
                        \override DynamicLineSpanner #'staff-padding = #3.0
                        \clef bass
                        \keepWithTag #'(Score
                            SegmentThree
                        ) \transpose c c { 
                            \celloGlobalSong
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
%}

%{
    \bookpart {

        \header {
            title = ""
            subtitle = \markup \center-column { \vspace #1 "SegmentFour" }
            poet = ""
            composer = ""            
            arranger = ""
        }
  
        \score {
            \keepWithTag #'(Score PDF
                SegmentFour
            ) <<

                \new ChoirStaff = "vocal" << 
                    \new Staff = "voice" \with { \magnifyStaff #4/5 } { 
                        \set Staff.instrumentName = #"Voice"
                        \set Staff.shortInstrumentName = #""
                        \accidentalStyle modern-voice-cautionary
                        \override DynamicLineSpanner #'staff-padding = #3.0
                        \new Voice = "lead" {
                            \keepWithTag #'(Lead
                                SegmentFour
                            ) \transpose c c { 
                                \voiceGlobalSong
                            }
                        }
                    }
                    \new Lyrics \with { alignAboveContext = "staff" } {
                        \lyricsto "lead" { \lyricsSong } 
                    }
                >> 

                \new ChordNames \transpose c c { \chordsSong }

                \new StaffGroup = "strings" << 

                    \new Staff = "violinI" \with { \magnifyStaff #4/5 } { 
                        \set Staff.instrumentName = #"Violin I"
                        \set Staff.shortInstrumentName = #"VI"
                        \accidentalStyle modern-voice-cautionary
                        \override DynamicLineSpanner #'staff-padding = #3.0
                        \keepWithTag #'(Lead
                            SegmentFour
                        ) \transpose c c { 
                            \violinIGlobalSong
                        }
                    }
                    \new Staff = "violinII" \with { \magnifyStaff #4/5 } { 
                        \set Staff.instrumentName = #"Violin II"
                        \set Staff.shortInstrumentName = #"VII"
                        \accidentalStyle modern-voice-cautionary
                        \override DynamicLineSpanner #'staff-padding = #3.0
                        \keepWithTag #'(Score
                            SegmentFour
                        ) \transpose c c { 
                            \violinIIGlobalSong
                        }
                    }
                    \new Staff = "viola" \with { \magnifyStaff #4/5 } { 
                        \set Staff.instrumentName = #"Viola"
                        \set Staff.shortInstrumentName = #"Va"
                        \accidentalStyle modern-voice-cautionary
                        \override DynamicLineSpanner #'staff-padding = #3.0
                        \clef alto
                        \keepWithTag #'(Score
                            SegmentFour
                        ) \transpose c c { 
                            \violaGlobalSong
                        }
                    }
                    \new Staff = "cello" \with { \magnifyStaff #4/5 } { 
                        \set Staff.instrumentName = #"'Cello"
                        \set Staff.shortInstrumentName = #"'C"
                        \accidentalStyle modern-voice-cautionary
                        \override DynamicLineSpanner #'staff-padding = #3.0
                        \clef bass
                        \keepWithTag #'(Score
                            SegmentFour
                        ) \transpose c c { 
                            \celloGlobalSong
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
%}

}


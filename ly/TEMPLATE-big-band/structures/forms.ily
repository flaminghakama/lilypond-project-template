structureSongForm = \relative c { 
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    %\override Score.RehearsalMark #'extra-offset = #'( -4.4 . -3 )
    \key af \major
    \numericTimeSignature 
    \time 4/4
    \tempo "Swing" 4=152
    \tag SegmentOne {
        \tag #'(Part Lead Transposed) { 
            \once \override Score.RehearsalMark #'extra-offset = #'( -4.4 . -3 )
        }
        \tag #'(Rhythm) { 
            \once \override Score.RehearsalMark #'extra-offset = #'( -2 . -1 )
        }
        \startSection "A1"
        s1 \noBreak s1 \noBreak s1 \noBreak s1 \noBreakLead \breakTransposed 
        s1 \noBreak s1 \breakLead 

        s1 \noBreak s1 \noBreakLead \breakTransposed

        \tag #'(Transposed) { 
            \startSection "A2"
        }
        \tag #'(Lead Part Rhythm) {
            \once \override Score.RehearsalMark #'extra-offset = #'( -4.4 . -3 )
            \mark \markup { \box "A2" }
            \bar "||"
        }
        s1 \noBreak s1 \noBreak s1 \noBreak s1 \break 
        
        s1 \noBreak s1 \noBreak s1 \noBreak s1 \noBreakLead \breakTransposed
        \tag #'(Transposed) { 
            \startSection "B3"
        }
        \tag #'(Lead Part Rhythm) {
            \once \override Score.RehearsalMark #'extra-offset = #'( -4.4 . -3 )
            \mark \markup { \box "B3" }
            \bar "||"
        }
        s1 \noBreak s1 \breakLead

        s1 \noBreak s1 \noBreakLead \breakTransposed
        s1 \noBreak s1 \noBreak s1 \noBreak s1 \break

        \startSection "A4"
        s1 \noBreak s1 \noBreak s1 \noBreak s1 \noBreak
        s1 \noBreak s1 \break

        s1 \noBreak s1 \noBreak 
        s1 \noBreak s1 \noBreak
        s1 \noBreak s1 
        \pageBreakTransposed
    }
}

structure = \relative c { 
    \structureSongForm
    \break
    \tag SegmentTwo {
        \startSectionWithLabel "A5" "Drum Solo"
        \bar "||"
        s1*4  \breakTransposed
        s1*2 \breakLead s1*2 \breakTransposed
        \startSection "A6"
        s1*4 \break
        s1*4 \breakTransposed
        \startSection "B7"
        s1*2 \breakLead s1*2 \breakTransposed
        s1*4 \break
        \startSection "A8"
        s1*4   
        s1*2 \break s1*2   
        s1*4 \breakLead
        \pageBreakTransposed
    }
    \tag SegmentThree {
        \startSectionWithLabel "A9" "Solos"
        \bar "S[|:"
        s1*4 \breakTransposed
        s1*2 \breakLead s1*2 \breakTransposed
        \startSection "A10"
        s1*4 \break
        s1*4 \breakTransposed
        \startSection "B11"
        s1*2 \breakLead s1*2 \breakTransposed
        s1*4 \break
        \startSection "A12"
        s1*4   
        s1*2 \break s1*2   
        s1*4 \break
        \pageBreakTransposed
    }


    \tag SegmentFour {
        \set-mark-y-dir #`( (,left . ,DOWN) (,center . ,DOWN) (,right . ,UP) ) 
        \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT 
        \doubleMark 
            \markup \center-column { " " \dMoreSolosDS } 
            \markup { \box "A13" "Head Out" }
        \showMeasureNumber
        \bar ":|]"
        s1*4 \breakTransposed
        \set-mark-y-dir #`( (,left . ,UP) (,center . ,UP) (,right . ,UP) ) 
        s1*4 \break
        \startSection "A14"
        s1*4 \breakTransposed
        s1*4 \break
        \startSection "B15"
        s1*4 \breakTransposed
        s1*4 \breakTransposed
        \tag #'Lead {
            \once \override Score.RehearsalMark #'extra-offset = #'( -4.4 . -3 )
        }
        \startSection "A16"
        s1*4 \breakLead \pageBreakTransposed
        s1*4 \breakTransposed
        s1*4 \break
        \startSection "Coda"
        s1*4 \break
        s1*4 \break
        s1*4 \break
        s1*2  s1*2 \bar "|."
    }
}

structureRhythm = \relative c { 
    \structureSongForm 
    \tag SegmentTwo {
        \bar "S[|:" \break
        \repeat volta 2 {
            \once \override Score.RehearsalMark #'extra-offset = #'( -7 . 0 )
            \mark \markup { 
                \box "A5,A9" 
                "Solos"
                \translate #'( 1 . 1.2 ) \column { "1st X: stems down" "2nd, 3rd, etc.: stems up" } 
             }
            s1 \noBreak s1 \noBreak s1 \noBreak s1 \noBreak 
            s1 \noBreak s1 \pageBreak 

                s1 \noBreak s \noBreak
            \startSection "A6,A10"
            s1 \noBreak s1 \noBreak s1 \noBreak s1 \break
            
            s1 \noBreak s1 \noBreak s1 \noBreak s1 \noBreak
            \startSection "B7,B11"
            s1 \noBreak s1 \break

                s1 \noBreak s1 \noBreak 
            s1 \noBreak s1 \noBreak s1 \noBreak s1 \break

            \startSection "A8,A12"
            s1 \noBreak s1 \noBreak s1 \noBreak s1 \noBreak   
            s1 \noBreak s1 \break 

                s1 \noBreak s1 \noBreak 
            s1 \noBreak s1 \noBreak s1 \noBreak s1 \bar ":|]" 

            \set-mark-y-dir #`( (,left . ,DOWN) (,center . ,DOWN) (,right . ,UP) ) 
            \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT 
            \doubleMark 
                \markup \center-column { " " \dMoreSolosDS } 
                \markup { \box "A13" "Head Out" }

        }
    }
    \tag SegmentFour {
        s1 \noBreak s1 \noBreak s1 \noBreak s1 \break 
        \set-mark-y-dir #`( (,left . ,UP) (,center . ,UP) (,right . ,UP) ) 
        s1 \noBreak s1 \noBreak s1 \noBreak s1 \noBreak
        \once \override Score.RehearsalMark #'extra-offset = #'( -5 . -3 )
        \mark \markup { \box "A14" }
        \bar "||"
        s1 \noBreak s1 \pageBreak 

            s1 \noBreak s1 \noBreak 
        s1 \noBreak s1 \noBreak s1 \noBreak s1 \break

        \once \override Score.RehearsalMark #'extra-offset = #'( -4.4 . -2 )
        \mark \markup { \box "B15" }
        \bar "||"
        s1 \noBreak s1 \noBreak s1 \noBreak s1 \noBreak
        s1 \noBreak s1 \break 

            s1 \noBreak s1 \noBreak
        \once \override Score.RehearsalMark #'extra-offset = #'( -5 . -3 )
        \mark \markup { \box "A16" }
        \bar "||"
        s1 \noBreak s1 \noBreak s1 \noBreak s1 \break

        s1 \noBreak s1 \noBreak s1 \noBreak s1 \noBreak
        s1 \noBreak s1 \break 

            s1 \noBreak s1 \noBreak  
        \startSection "Coda"
        s1 \noBreak s1 \noBreak s1 \noBreak s1 \break

        s1 \noBreak s1 \noBreak s1 \noBreak s1 \noBreak
        s1 \noBreak s1 \break 

        s1 \noBreak s1 \noBreak s1 \noBreak s1 \noBreak 
        s1 \noBreak s1 \noBreak \bar "|."
    }
}

structureEnding = \relative c {
    \once \override Score.RehearsalMark #'extra-offset = #'( -10 . -1 ) 
    \once \override Score.RehearsalMark #'font-size = #8
    \mark \markup { \musicglyph #"scripts.coda" }
    \tag SegmentFour {
        \numericTimeSignature 
        \key af \major
        s1 s1
        s1 \noBreak s1 \noBreakLead s1 \noBreak s1 \breakLead \breakTransposed

        s1 \noBreak s1 \noBreak s1 \noBreak s1 \noBreak
        s1 \noBreak s1 \breakLead \breakTransposed

        s1 \noBreakLead s1 \noBreakLead s1 \noBreak s1 \noBreak 
        s1 \noBreak s1 \noBreak \bar "|."
    }
}

global = #(define-music-function (parser location mus) (ly:music?) #{ << \structure \relative { $mus } >> #})
globalRhythm = #(define-music-function (parser location mus) (ly:music?) #{ << \structureRhythm \relative { $mus } >> #})
globalSongForm = #(define-music-function (parser location mus) (ly:music?) #{ << { \structureSongForm } \relative { $mus } >> #})
globalEnding = #(define-music-function (parser location mus) (ly:music?) #{ << \structureEnding \relative { $mus } >> #})


structure = \relative c { 
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark #'extra-offset = #'( -0.5 . 0.3 )
    \numericTimeSignature 
    \time 4/4
    \partial 8 s8
    \tempo "Swing Blues" 4=164
    \tag SegmentOne {
        \mark \markup \box A1
        s1*4
        s1*4 \bar "||"
        \mark \markup \box A2
        s1*4
        s1*4 \bar "||"
        \mark \markup \box B3
        s1*4 
        s1*4 
        s1*4 
        s1*4 \bar "||"
        \mark \markup \box A4
        s1*4 
        s1*4 
        s1*4 \bar "||"
    }
    \tag SegmentTwo {
        \mark \markup \box A5
        s1*4
        s1*4 \bar "||"
        \mark \markup \box A6
        s1*4
        s1*4 \bar "||"
        \mark \markup \box B7
        s1*4 
        s1*4 
        s1*4 
        s1*4 \bar "||"
        \mark \markup \box A8
        s1*4 
        s1*4 
        s1*4 \bar "||"
    }
    \tag SegmentThree {
        \mark \markup \box A9
        s1*4
        s1*4 \bar "||"
        \mark \markup \box A10
        s1*4
        s1*4 \bar "||"
        \mark \markup \box B11
        s1*4 
        s1*4 
        s1*4 
        s1*4 \bar "||"
        \mark \markup \box A12
        s1*4 
        s1*4 
        s1*4 \bar "||"
        s1*3 s1 s1 \bar "|." 
    }
}

global = #(define-music-function (parser location mus) (ly:music?) #{ << \structure \relative { $mus } >> #})


structure = \relative c { 
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark #'extra-offset = #'( -0.5 . 0.3 )
    \numericTimeSignature 
    \time 4/4
    \partial 8 s8
    \tempo "Swing Blues" 4=164
    \tag ChorusI {
        \mark \markup \box A1
        s1*4
        s1*4 \bar "||"
        \mark \markup \box A2
        s1*4
        s1*4 \bar "||"
        \mark \markup \box B3
        s1*4 
        s1*4 \bar "||"
    }
    \tag ChorusII {
        \mark \markup \box A4
        s1*4
        s1*4 \bar "||"
        \mark \markup \box A5
        s1*4
        s1*4 \bar "||"
        \mark \markup \box B6
        s1*4 
        s1*4 
        s1*4 \bar "||"
        \mark \markup \box C7
        s1*4 
        s1*4 
        s1*4 \bar "|." 
    }
}

global = #(define-music-function (parser location mus) (ly:music?) #{ << \structure \relative { $mus } >> #})

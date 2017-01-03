
structureSong = \relative c { 
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark #'extra-offset = #'( -3.2 . 0.3 )
    \numericTimeSignature 
    \time 4/4
    \tempo "Punk Rock" 4=172
    \mark \markup \box A1
    s1*8 |
    s1*4 <>^\toCoda s1*2 \break
}

structureCoda = \relative c { 
    \once \override Score.RehearsalMark #'extra-offset = #'( -14 . -2 ) 
    \once \override Score.RehearsalMark #'font-size = #8
    \mark \markup { \musicglyph #"scripts.coda" }
    \numericTimeSignature 
    \time 2/2
    s1*8 \bar "|."
}

globalSong = #(define-music-function (parser location mus) (ly:music?) #{ << \structureSong \relative { $mus } >> #})
globalCoda = #(define-music-function (parser location mus) (ly:music?) #{ << \structureCoda \relative { $mus } >> #})
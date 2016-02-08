
structureHeadA = \relative c { 
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark #'extra-offset = #'( -3.2 . 0.3 )
    \numericTimeSignature 
    \time 4/4
    \tempo "Punk Rock" 4=172
    \mark \markup \box A1
    s1*8 |
    s1*4 <>^\toCoda s1*2 \break
}

structureMontuno = \relative c { 
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark #'extra-offset = #'( -3.2 . 0.3 )
    \mark \markup \box Montuno
    s1*4
    \bar "||.[|:" 
    \voltaCustom { s1*3 } \voltaAllXButLast { s1 \bar ":|]" } \voltaLast { s1 \bar "||.[|:" }
    \voltaCustom { s1*3 } \voltaAllXButLast { s1 \bar ":|]" } \voltaLast { s1 \bar "||.[|:" }
    \voltaCustom { s1*3 } \voltaAllXButLast { s1 \bar ":|]" } \voltaLast { s1 \bar "||.[|:" }
    s1*4 \bar "||"
}

structureHead = \relative c { 
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark #'extra-offset = #'( -3.2 . 0.3 )
    \numericTimeSignature 
    \time 4/4
    \tempo "Punk Rock" 4=172
    \mark \markup \box A1
    s1*8 |
    s1*4 <>^\toCoda s1*2 \break
    \mark \markup \box B2 
    \bar "||.[|:" 
    \repeat volta 2 { s1*4 } 
    \bar ":|]"
    s1*8 
    \bar "||"
}

structureSolos = \relative c { 
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark #'extra-offset = #'( -3.4 . 0.9 )
    \mark \markup { \box C3 \musicglyph #"scripts.segno" }
    \bar "||.[|:" 
    \repeat volta 2 { 
       s1*3
    } \alternative { { s1 \bar ":|]" } { s1 \bar "||" } }
    s1*8 \bar "||" \break
    s1*7 s1_\roadmap \bar "||"
}

structureCoda = \relative c { 
    \once \override Score.RehearsalMark #'extra-offset = #'( -14 . -2 ) 
    \once \override Score.RehearsalMark #'font-size = #8
    \mark \markup { \musicglyph #"scripts.coda" }
    \numericTimeSignature 
    \time 2/2
    s1*8 \bar "|."
}

globalHeadA = #(define-music-function (parser location mus) (ly:music?) #{ << \structureHeadA \relative { $mus } >> #})
globalMontuno = #(define-music-function (parser location mus) (ly:music?) #{ << \structureMontuno \relative { $mus } >> #})
globalHead = #(define-music-function (parser location mus) (ly:music?) #{ << \structureHead \relative { $mus } >> #})
globalSolos = #(define-music-function (parser location mus) (ly:music?) #{ << \structureSolos \relative { $mus } >> #})
globalCoda = #(define-music-function (parser location mus) (ly:music?) #{ << \structureCoda \relative { $mus } >> #})
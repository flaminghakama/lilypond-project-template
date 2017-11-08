
structure = \relative c { 
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark #'extra-offset = #'( -0.5 . 0.3 )
    \key g \major
    \tempo "Jump Blues" 4=120
    \numericTimeSignature 
    \time 4/4
    s1*4 \bar "||"
    \tag ChorusI {
        \mark \markup \box "Verse 1"
        s1*8
        s1*8 \bar "||"
        \mark \markup \box "Verse 2"
        s1*8
        s1*8 \bar "||"
        \mark \markup \box "Bridge 1"
        s1*4
        s1*6 \bar "||"
    }
    \tag ChorusII {
        \mark \markup \box "Verse 3"
        s1*8
        s1*8 \bar "||"
    }
    \tag ChorusIII {
        \mark \markup \box "Coda"
        s1*2 s1 \fermata
        \bar "|." 
    }
}

globalSong = #(define-music-function (parser location mus) (ly:music?) #{ << \structure \relative { $mus } >> #})

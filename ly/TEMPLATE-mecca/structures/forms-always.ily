
structure = \relative c { 
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark #'extra-offset = #'( -0.5 . 0.3 )
    \key a \major
    \tempo "Shuffle" 4=134
    \numericTimeSignature 
    \time 4/4
    \partial 4*3 s4 2 \bar "||"
    \tag ChorusI {
        \mark \markup \box "Verse 1"
        s1*8 \bar "||"
        \mark \markup \box "Verse 2"
        s1*8 \bar "||"
        \mark \markup \box "Bridge 1"
        s1*7 \bar "||"
    }
    \tag ChorusII {
        \mark \markup \box "Verse 3"
        s1*8 \bar "||"
        \mark \markup \box "Verse 4"
        s1*8 \bar "||"
        \mark \markup \box "Bridge 2"
        s1*4 
        s1*6 \bar "||"
    }
    \tag ChorusIII {
        \mark \markup \box "Verse 5(1)"
        s1*8 \bar "||"
        \mark \markup \box "Coda"
        s1*8 \bar "|." 
    }
}

globalSong = #(define-music-function (parser location mus) (ly:music?) #{ << \structure \relative { $mus } >> #})

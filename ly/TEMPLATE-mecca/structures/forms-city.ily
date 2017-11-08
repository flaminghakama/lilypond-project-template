
structure = \relative c { 
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark #'extra-offset = #'( -0.5 . 0.3 )
    \key g \major
    \tempo "Swing" 4=128
    \numericTimeSignature 
    
    \time 4/4

    \tag ChorusI {
        \mark \markup \box "Verse 1"
        s1*7 \bar "||" 
        \time 2/4 
        s2 \bar "||" 
        \time 4/4

        \mark \markup \box "Verse 2"
        s1*7 \bar "||" 
        \time 2/4 
        s2 \bar "||" 
        \time 4/4

        \mark \markup \box "Bridge 1"
        s1*4
        s1*6 \bar "||" 
    }
    \tag ChorusII {
        \mark \markup \box "Verse 3"
        s1*7 \bar "||" 
        \time 2/4 
        s2 \bar "||" 
        \time 4/4

        \mark \markup \box "Verse 4"
        s1*7 \bar "||" 
        \time 2/4 
        s2 \bar "||" 
        \time 4/4

        \mark \markup \box "Bridge 2"
        s1*4
        s1*6 \bar "||" 
    }
    \tag ChorusIII {
        \mark \markup \box "Verse 5"
        s1*7 \bar "||" 
        \time 2/4 
        s2 \bar "||" 
        \time 4/4

        \mark \markup \box "Verse 6"
        s1*7 \bar "||" 
        \time 2/4 
        s2 \bar "||" 
        \time 4/4

        \mark \markup \box "Bridge 3"
        s1*4
        s1*6 \bar "||" 

        \mark \markup \box "Coda"
        s1*4
        s1*6
        \tempo "Slowly"
        s1*4
        \bar "|." 
    }
}

globalSong = #(define-music-function (parser location mus) (ly:music?) #{ << \structure \relative { $mus } >> #})


structure = \relative c { 
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark #'extra-offset = #'( -0.5 . 0.3 )
    \key g \major
    \tempo "Flamenco" 4=120
    \numericTimeSignature 
    \time 4/4
    s1 \bar "||" 
    \time 2/4 
    s2 \bar "||" 
    \time 4/4

    \tag ChorusI {
        \mark \markup \box "Verse 1"
        s1*4
        s1*3 s2 s2 \fermata 
        s1*4
        s1*5 \bar "||" 
        \time 2/4 
        s2 \bar "||" 
        \time 4/4

    }
    \tag ChorusII {
        \mark \markup \box "Verse 2"
        s1*4
        s1*3 s2 s2 \fermata 
        s1*4
        s1*5 \bar "||" 
        \time 2/4 
        s2 \bar "||" 
        \time 4/4

    }
    \tag ChorusIII {
        \mark \markup \box "Verse 3"
        s1*4
        s1*3 s2 s2 \fermata 
        s1*4
        s1*5 \bar "||" 
        \time 2/4 
        s2 \bar "||" 
        \time 4/4
        
        \mark \markup \box "Verse 4"
        s1*4
        s1*3 s2 s2 \fermata 
        s1*4
        s1*4
        \mark \markup \box "Coda"
        \bar "[|:" 
        s1*4
        \bar ":|]" 
    }
}

globalSong = #(define-music-function (parser location mus) (ly:music?) #{ << \structure \relative { $mus } >> #})


structure = \relative c { 
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark #'extra-offset = #'( -0.5 . 0.3 )
    \key g \major
    \tempo "Swing" 4=124
    \numericTimeSignature 
    \time 4/4
    %\partial 4*3 s4 2
    s1 \bar "||"
    \tag ChorusI {
        \mark \markup \box "Verse 1"
        s1*8 
        s1*2 \bar "||" \time 3/4 s2. \bar "||" \time 4/4 s1*3 \bar "||"
        \mark \markup \box "Verse 2"
        s1*8 
        s1*2 \bar "||" \time 3/4 s2. \bar "||" \time 4/4 s1*3 \bar "||"
        \mark \markup \box "Bridge 1"
        s1*4
        s1*5 \bar "||"
    }
    \tag ChorusII {
        \mark \markup \box "Verse 3"
        s1*8 
        s1*2 \bar "||" \time 3/4 s2. \bar "||" \time 4/4 s1*3 \bar "||"
        \mark \markup \box "Verse 4"
        s1*8 
        s1*2 \bar "||" \time 3/4 s2. \bar "||" \time 4/4 s1*3 \bar "||"
        \mark \markup \box "Bridge 2"
        s1*4
        s1*5 \bar "||"
    }
    \tag ChorusIII {
        \mark \markup \box "Verse 5(1)"
        s1*8 
        s1*2 \bar "||" \time 3/4 s2. \bar "||" \time 4/4 s1*3 \bar "||"
        \mark \markup \box "Coda"
        \time 3/4 s2. \bar "||" \time 4/4 s1*3 \bar "||"
        s1*4
        \bar "|." 
    }
}

global = #(define-music-function (parser location mus) (ly:music?) #{ << \structure \relative { $mus } >> #})


structureSong = \relative c { 
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark #'extra-offset = #'( -3.2 . 0.3 )
    \key df \major
    \numericTimeSignature 
    \time 3/4
    \tempo "Allegro Guisto"

    \tag #'SegmentX { \relative c' {
        s2.*16
    } }

    \tag #'SegmentA { \relative c' { % m17
        \mark \markup \box "A"
        s2.*16
    } }

    \tag #'SegmentB { \relative c' { % m33
        \mark \markup \box "B"
        s2.*24
    } }

    \tag #'SegmentC { \relative c' { % m57
        \mark \markup \box "C"
        s2.*13
    } }

    \tag #'SegmentD { \relative c' { % m70
        \mark \markup \box "D"
        s2.*12
    } }

    \tag #'SegmentE { \relative c' { % m82
        \mark \markup \box "E"
        s2.*12
    } }
}


structurePart = \relative c { 
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark #'extra-offset = #'( -3.2 . 0.3 )
    \key df \major
    \numericTimeSignature 
    \time 3/4
    \tempo "Allegro Guisto"
    \mark \markup \box A1

    \tag #'SegmentX { \relative c' {
        s2.*16
    } }

    \tag #'SegmentA { \relative c' { % m17
        \mark \markup \box "A"
        s2.*16
    } }

    \tag #'SegmentB { \relative c' { % m33
        \mark \markup \box "B"
        s2.*24
    } }

    \tag #'SegmentC { \relative c' { % m57
        \mark \markup \box "C"
        s2.*13
    } }

    \tag #'SegmentD { \relative c' { % m70
        \mark \markup \box "D"
        s2.*12
    } }

    \tag #'SegmentE { \relative c' { % m82
        \mark \markup \box "E"
        s2.*12
    } }
}


globalSong = #(define-music-function (parser location mus) (ly:music?) #{ << \structureSong \relative { $mus } >> #})
globalPart = #(define-music-function (parser location mus) (ly:music?) #{ << \structurePart \relative { $mus } >> #})

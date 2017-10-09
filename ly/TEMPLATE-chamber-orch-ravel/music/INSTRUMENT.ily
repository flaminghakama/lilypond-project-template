INSTRUMENTSong = {

    \tag #'SegmentX { \relative c' {
        R2.*16
    } }

    \tag #'SegmentA { \relative c' { % m17
        \mark \markup \box "A"
        R2.*16
    } }

    \tag #'SegmentB { \relative c' { % m33
        \mark \markup \box "B"
        R2.*24
    } }

    \tag #'SegmentC { \relative c' { % m57
        \mark \markup \box "C"
        R2.*13
    } }

    \tag #'SegmentD { \relative c' { % m70
        \mark \markup \box "D"
        R2.*12
    } }

    \tag #'SegmentE { \relative c' { % m82
        \mark \markup \box "E"
        R2.*12
    } }
}

INSTRUMENTGlobalSong = \globalSong { \INSTRUMENTSong }

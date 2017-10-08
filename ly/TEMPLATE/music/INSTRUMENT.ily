INSTRUMENTSong = {

    \tag #'SegmentX { \relative c' {

    } }

    \tag #'SegmentA { \relative c' { % m17

    } }

    \tag #'SegmentB { \relative c' { % m33

    } }

    \tag #'SegmentC { \relative c' { % m57

    } }

    \tag #'SegmentD { \relative c' { % m70

    } }

    \tag #'SegmentE { \relative c' { % m82

    } }
}

INSTRUMENTGlobalSong = \globalSong { \INSTRUMENTSong }
INSTRUMENTGlobalPart = \globalPart { \INSTRUMENTSong }

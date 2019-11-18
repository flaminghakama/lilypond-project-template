structureSong = \relative c { 
    
    \key e \major 
    \numericTimeSignature
    \time 4/4
    \tempo "Punk Rock" 4=172

    \tag SegmentVerseI \relative c' {
        \startSection "Verse I"
        s1*7
    }
    \tag SegmentChorusI \relative c' {
        \startSectionNoBarline "Chorus I"
        s1
        \tag #'Clave { \tempo "Half Time Feel" }
        s1*6 
    }
    \tag SegmentVerseII \relative c' {
        \startSection "Verse II" % B2
        \tag #'Clave { \tempo "Punk Rock" }
        s1*15
    }
    \tag SegmentChorusII \relative c' {
        \startSectionNoBarline "Chorus II"
        s1
        \tag #'Clave { \tempo "Half Time Feel" }
        s1*7
        \tag #'Clave { \tempo "Punk Rock" }
        s1*5
    }

    \tag SegmentVerseIII \relative c' {
        \startSection "Verse III" % C3
        s1*12
        \startSection ""
        s1*12
    }
    \tag SegmentChorusIII \relative c' {
        \tag #'Clave { \tempo "Half Time Feel" }
        \startSectionNoBarline "Chorus III"
        s1*12
    }
    \tag SegmentBridgeI \relative c' {
        \startSection "Bridge I"
        \tag #'Clave { \tempo "Punk Rock" }
        s1*8
    }

    \tag SegmentVerseSolo \relative c' {
        \startSection "Verse Solo" % C3 D.S.
        s1*12
        \startSection ""
        s1*12
    }
    \tag SegmentChorusSolo \relative c' {
        \tag #'Clave { \tempo "Half Time Feel" }
        \startSectionNoBarline "Chorus Solo"
        s1*12
    }
    \tag SegmentBridgeSolo \relative c' {
        \startSection "Bridge Solo"
        \tag #'Clave { \tempo "Punk Rock" }
        s1*8
    }

    \tag SegmentVerseIV \relative c' {
        \startSection "Verse Solo" % D.C.
        s1*7
    }
    \tag SegmentChorusIV \relative c' {
        s1*1
        \tag #'Clave { \tempo "Half Time Feel" }
        s1*3 
    }
    \tag SegmentCoda \relative c' {
        \startSectionNoBarline "Coda"
        s1*5 \breath
        s1
        s1
        s1
        \bar "|."
    }
}

globalSong = #(define-music-function (parser location mus) (ly:music?) #{ << \structureSong \relative { $mus } >> #})

INSTRUMENTSong = \relative c { 
    
    \tag SegmentVerseI \relative c' {
        R1*7
    }
    \tag SegmentChorusI \relative c' {
        R1
        R1*6 
    }
    \tag SegmentVerseII \relative c' {
        R1*15
    }
    \tag SegmentChorusII \relative c' {
        R1
        R1*7
        R1*5
    }

    \tag SegmentVerseIII \relative c' {
        R1*12
        R1*12
    }
    \tag SegmentChorusIII \relative c' {
        R1*12
    }
    \tag SegmentBridgeI \relative c' {
        R1*8
    }

    \tag SegmentVerseSolo \relative c' {
        R1*12
        R1*12
    }
    \tag SegmentChorusSolo \relative c' {
        R1*12
    }
    \tag SegmentBridgeSolo \relative c' {
        R1*8
    }

    \tag SegmentVerseIV \relative c' {
        R1*7
    }
    \tag SegmentChorusIV \relative c' {
        R1*1
        R1*3 
    }
    \tag SegmentCoda \relative c' {
        R1*5 \breath
        R1
        R1
        R1
    }
}

INSTRUMENTGlobal = \globalSong \INSTRUMENTSong

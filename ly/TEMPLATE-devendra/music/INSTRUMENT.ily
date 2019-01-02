INSTRUMENTSong = \relative c { 
    
    \tag SegmentIntro { 
        % "Single"
        s1*12 
        s1*4
    }
    \tag SegmentSthaiOneOne { 
        s1*8
        s1*4
    }
    \tag SegmentSthaiOneTwo { 
        s1*8
        s1*4
    }
    \tag SegmentInterludeOne { 
        % "Double"
        s1*8
    }
    \tag SegmentAntaraOne { 
        % "Single"
        s1*8
        s1*8
    }


    \tag SegmentSthaiTwo { 
        % "Single"
        s1*8 
        s1*4
    }
    \tag SegmentInterludeTwo { 
        s1*8
    }
    \tag SegmentAntaraTwo { 
        % "Double"
        s1*8
        s1*8
    }


    \tag SegmentSthaiThree { 
        s1*8
        s1*4
    }
    \tag SegmentInterludeThree { 
        s1*8
    }
    \tag SegmentAntaraThree { 
        % "Double"
        s1*8
        s1*8
    }

    \tag SegmentSthaiFour { 
        s1*8
        s1*4
    }
    \tag SegmentInterludeFour { 
        s1*8
    }
    \tag SegmentAntaraFour { 
        s1*8
        s1*8
        % "Double"
        s1*4
    }

    \tag SegmentSthaiFive { 
        s1*8 
        s1*4
    }
    \tag SegmentAntaraFive { 
        s1*8
        s1*8
    }

    \tag SegmentSthaiSix { 
        s1*8
        s1*4
    }

    \tag SegmentSthaiSeven { 
        % "Accel."
        s1*8 
        % "Single"
        s1*8
    }

}

INSTRUMENTGlobal = \globalSong \INSTRUMENTSong

\addQuote "INSTRUMENT" { \INSTRUMENTSong }

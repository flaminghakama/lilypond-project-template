
structureSong = \relative c { 
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    %\override Score.RehearsalMark #'extra-offset = #'( -3.2 . 0.3 )
    
    \key gs \minor 
    \numericTimeSignature
    \time 2/2

    \tag SegmentIntro { 
        \startSection "Intro"
        \tempo "Single"
        s1*6 
        s1*2
    }
    \tag SegmentSthaiOneOne { 
        \startSection "Sthai I.1"
        s1*6 
        s1*2
    }
    \tag SegmentSthaiOneTwo { 
        \startSection "Sthai I.2"
        s1*4
        s1*2
    }
    \tag SegmentInterludeOne { 
        \startSection "Interlude I"
        \tempo "Double"
        s1*4
    }
    \tag SegmentAntaraOne { 
        \startSection "Antara I"
        \tempo "Single"
        s1*4
        s1*4
    }


    \tag SegmentSthaiTwo { 
        \startSection "Sthai II"
        \tempo "Single"
        s1*4 
        s1*2
    }
    \tag SegmentInterludeTwo { 
        \startSection "Interlude II"
        s1*4
    }
    \tag SegmentAntaraTwo { 
        \startSection "Antara II"
        \tempo "Double"
        s1*4
        s1*4
    }


    \tag SegmentSthaiThree { 
        \startSection "Sthai III"
        s1*4 
        s1*2
    }
    \tag SegmentInterludeThree { 
        \startSection "Interlude III"
        s1*4
    }
    \tag SegmentAntaraThree { 
        \startSection "Antara III"
        \tempo "Double"
        s1*4
        s1*4
        s1*4 
        s1*2
    }

    \tag SegmentInterludeFour { 
        \startSection "Interlude IV"
        s1*4
    }
    \tag SegmentAntaraFour { 
        \startSection "Antara IV"
        s1*4
        s1*4
        \tempo "Double"
        s1*2
        \bar "||"
        s1*2
    }
    \tag SegmentAntaraFive { 
        \startSection "Antara V"
        s1*4
        s1*4
        s1*4
        s1*2
    }

    \tag SegmentSthaiFive { 
        \startSection "Sthai V"
        \tempo "Accel."
        s1*4 
        \tempo "Single"
        s1*4
    }

}

globalSong = #(define-music-function (parser location mus) (ly:music?) #{ << \structureSong \relative { $mus } >> #})


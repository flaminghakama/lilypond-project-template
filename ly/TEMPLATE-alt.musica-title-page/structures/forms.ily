
structureSong = \relative c { 
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark #'extra-offset = #'( -3.2 . 0.3 )
    \numericTimeSignature 


    \tag SegmentIntro { 
        R1*6 
        R2.        
    }
    \tag SegmentFunk { 
        % m8
        R1
        R1*16
        R1*4
        R1*8
    }
    \tag SegmentAroCuban { 
        % m26
        R1*8 ||
        R1*4 ||
        R1. R4*7 ||
    }
    \tag SegmentSoloFunk { 
        % m40
        R1*12 
        R1*2 R1*2 || R1*2 ||
    }
    \tag SegmentSoloAfroCuban { 
        % m58
        R1*12 ||
        R1*7 R1 || R1 || 
    }
    \tag SegmentDrum { 
        % m79
        R1*4 ||
        R1*4 ||
        R1*4 ||
    }}

globalSong = #(define-music-function (parser location mus) (ly:music?) #{ << \structureSong \relative { $mus } >> #})


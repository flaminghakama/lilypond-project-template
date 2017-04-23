
structureHead = \relative c { 
    \key df \major
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark #'extra-offset = #'( -0.8 . 0.8 )
    \override MultiMeasureRest.expand-limit = #1
    \tag #'SegmentIntro { 
        \numericTimeSignature 
        \tempo "Martial" 2=92
        \time 2/2 
        \mark \markup{ \box Intro } 
    }
    \tag #'MIDI { s4*7 s4*7 }
}

structureSolosPart = \relative c { 
    \tag #'SegmentSoloFunk { 
    }
    \tag #'SegmentSoloAfroCuban { 
        \set Score.currentBarNumber = #100
    }
    \tag #'SegmentDrum { 
    }
}

structureSolosScore = \relative c { 
    \tag #'SegmentSoloFunk { 
    }
    \tag #'SegmentSoloAfroCuban { 
    }
    \tag #'SegmentDrum { 
    }
}


partMarkTweaksHead = \relative c { 
    \tag #'SegmentIntro { 
    }
    \tag #'SegmentFunk { 
    }
    \tag #'SegmentAfroCuban { 
        \tag #'(Flute Piccolo BassClarinet Bass) { \once \override Score.RehearsalMark #'extra-offset = #'( -7 . 1 ) }
        \tag #'(Clave) { \once \override Score.RehearsalMark #'extra-offset = #'( -12 . -5 ) }
    }
}
partMarkTweaksSolos = \relative c { 
    \tag #'SegmentSoloFunk { 
        %\tag #'Part { \once \override Score.RehearsalMark #'extra-offset = #'( -8 . 1 ) }
    }
    \tag #'SegmentSoloAfroCuban { 
        \tag #'(Flute Piccolo BassClarinet Bass) { \once \override Score.RehearsalMark #'extra-offset = #'( -10 . 1 ) }
        \tag #'(Clave) { \once \override Score.RehearsalMark #'extra-offset = #'( -4 . 0 ) }
    }
    \tag #'SegmentDrum { 
        \tag #'(Flute Piccolo BassClarinet Bass) { \once \override Score.RehearsalMark #'extra-offset = #'( -7 . 2 ) }
        \tag #'(Clave) { \once \override Score.RehearsalMark #'extra-offset = #'( -5 . 0 ) }
    }
}

structurePart = \relative c { 
    \structureHead
    \structureSolosPart
}

structureScore = \relative c { 
    \structureHead
    \structureSolosScore
}

markTweaksPart = \relative c { 
    \partMarkTweaksHead
    \partMarkTweaksSolos
}


globalPart = #(define-music-function (parser location mus) (ly:music?) #{ << \structurePart \markTweaksPart \relative { $mus } >> #})
globalScore = #(define-music-function (parser location mus) (ly:music?) #{ << \structureScore \relative { $mus } >> #})


structureForm = \relative c { 

}

structureSong = \relative c { 
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark #'extra-offset = #'( -0.8 . 0.8 )
    \override Score.MetronomeMark #'Y-offset = #3 
    \key b \major
    \numericTimeSignature 
    \time 2/2
    \tempo 2=54
    \tag SegmentOne { \structureForm }
    \tag SegmentTwo { \structureForm }
    \tag SegmentThree { \structureForm }
    \tag SegmentFour { \structureForm }
}

globalSong = #(define-music-function (parser location mus) (ly:music?) #{ << \structureSong \relative { $mus } >> #})

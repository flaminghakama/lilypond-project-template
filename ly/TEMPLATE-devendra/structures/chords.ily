\include "../../flaming-libs/flaming-chords.ily"

chordsIntro = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    gs1:m7.5- | 1 | cs:7.9- | 1 |
    gs1:m7.5- | 1 | cs:7.9- | 1 |
}

chordsSthai = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    fs1:m | 1 | 1 | cs:7.9- |
    1 | 1 | 1 | fs:m |
    cs:7.9- | 1 | 1 | fs:m |
}

chordsInterlude = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    cs:7.9- | 1 | 1 | fs:m |
}

chordsAntara = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    cs:7.9- | 1 | 1 | fs:m |
    cs:7.9- | 1 | 1 | fs:m |
    cs:7.9- | 1 | 1 | fs:m |
    cs:7.9- | 1 | 1 | fs:m |
}


chordsSong = \chordmode { \set chordChanges = ##t \set chordNameExceptions = #flamingChordExceptions
  \set noChordSymbol = ##f


    \tag SegmentIntro { 
        \chordsIntro
        \chordsIntro
    }
    \tag SegmentSthaiOneOne { 
        \chordsSthai
        s1*4
    }
    \tag SegmentSthaiOneTwo { 
        \chordsSthai
    }
    \tag SegmentInterludeOne { 
        \chordsInterlude
    }
    \tag SegmentAntaraOne { 
        \chordsAntara
    }


    \tag SegmentSthaiTwo { 
        \chordsSthai
    }
    \tag SegmentInterludeTwo { 
        \chordsInterlude
    }
    \tag SegmentAntaraTwo { 
        \chordsAntara
    }


    \tag SegmentSthaiThree { 
        \chordsSthai
    }
    \tag SegmentInterludeThree { 
        \chordsInterlude
    }
    \tag SegmentAntaraThree { 
        \chordsAntara
        s1*8 
        s1*4
    }

    \tag SegmentInterludeFour { 
        \chordsInterlude
    }
    \tag SegmentAntaraFour { 
        \chordsAntara
        s1*4
        \bar "||"
        s1*4
    }
    \tag SegmentAntaraFive { 
        \chordsAntara
        s1*8
        s1*4
    }

    \tag SegmentSthaiFive { 
        \chordsSthai
        s1*4
    }
}
chordsLead = \chordmode {  \set chordChanges = ##t  \set chordNameExceptions = #flamingChordExceptions 
    \chordsSong       
}
chordsPart = \chordmode {  \set chordChanges = ##t  \set chordNameExceptions = #flamingChordExceptions 
  \chordsSong
}


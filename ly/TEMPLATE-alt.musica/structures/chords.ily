\include "../flaming-libs/flaming-chords.ily"

noChordsA = \chordmode { \set chordChanges = ##t \set chordNameExceptions = #flamingChordExceptions { R1*14 } }

chordsA = \chordmode { \set chordChanges = ##t \set chordNameExceptions = #flamingChordExceptions
  e1:7.11+ | e:7.11+ | e:7.11+ | e:7.11+ | 
  a:7.5- | a:7.5- | e:7.11+ | r1 | 
  \set noChordSymbol = ##f
  r1 | r1 | R1*2 | 
  b1:7.9+ | b1:7.9+ |
}

noChordsB = \chordmode { \set chordChanges = ##t \set chordNameExceptions = #flamingChordExceptions { R1*24 } }
chordsB = \chordmode {  \set chordChanges = ##t  \set chordNameExceptions = #flamingChordExceptions 
  e1:7.11+ | e:7.11+ | e:7.11+ | e:7.11+ | 
  a:m | a:m | f:7.5- | f:7.5- | 
  \set noChordSymbol = "N.C."
  e1:7.11+ | e:7.11+ | e:7.11+ | r1 | 
  \set noChordSymbol = ##f
  r1 | r1 | r1 | r1 | r1 | r1 | r1 |
  b:7.9+ | c:7.9+ | c:7.9+ | d:7.9+ | f:7.9- | 
}

chordsC = \chordmode {  \set chordChanges = ##t  \set chordNameExceptions = #flamingChordExceptions 
  e1:7.11+ | e:7.11+ | e:7.11+ | e:7.11+ | e:7.11+ | 
  e:7.11+ | e:7.11+ | e:7.11+ | e:7.11+ | 
  a:m7.13- | a:m7.13- | a:m7.13- | a:m7.13- | 
  a:m7.13- | a:m7.13- | a:m7.13- | a:m7.13- | 
  a:m7.13- | a:m7.13- | f:7.5- | f:7.5- |
  \set noChordSymbol = "N.C."
  a:7.5- | e:7 | e:7 | r1 | a:7.5- | e:7 | 
  a:7.5- | r1 | a:7.5- | r1 | a:7.5- | r1 | 
  bf | bf | f4.:sus4.7/bf bf8 bf2 | bf1 |
  f4.:sus4.7/bf bf8 bf2 | bf1 | d2:7.5+ f:7.5-.9- | f1:7.5-.9- | 
}

noChordsCoda = \chordmode { \set chordChanges = ##t \set chordNameExceptions = #flamingChordExceptions { R1*8 } }
chordsCoda  = \chordmode {  \set chordChanges = ##t  \set chordNameExceptions = #flamingChordExceptions 
  a1:7.5- | r1 | a:7.5- | r1 | 
  a1:7.5- | a1:7.5- | e2.:7.11+ e4:7 | e1:7 |
}

chordsHeadLead = \chordmode {  \set chordChanges = ##t  \set chordNameExceptions = #flamingChordExceptions 
  \chordsA
  \chordsB
}
chordsHeadPart = \chordmode {  \set chordChanges = ##t  \set chordNameExceptions = #flamingChordExceptions 
  \noChordsA
  \noChordsB
}
chordsSolos = \chordmode {  \set chordChanges = ##t  \set chordNameExceptions = #flamingChordExceptions 
  \chordsC
}


bassChordsA = \chordmode {  \set chordChanges = ##t  \set chordNameExceptions = #flamingChordExceptions
  \set noChordSymbol = ##f 
  r1 | r1 | r1 | r1 |
  r1 | r1 | r1 | r1 |
  r1 | r1 | r1 | r1 | b1:7.9+ | b1:7.9+ |
}

bassChordsC = \chordmode {  \set chordChanges = ##t  \set chordNameExceptions = #flamingChordExceptions 
  \set chordNameSeparator = \markup { "/" }
  \set noChordSymbol = ##f 
  e2:7.11+/d e2:7.11+ | e1:7.11+ | e2:7.11+/d e2:7.11+ | e1:7.11+ |
  e2:7.11+/d e2:7.11+ | e1:7.11+ | e2:7.11+/d e2:7.11+ | e1:7.11+ |
  a4.:m7.13-/g  a8:m7.13- a2:m7.13- | a1:m7.13- | a4.:m7.13-/g a8:m7.13- a2:m7.13- | a1:m7.13- |
  a2:m7.13-/g  a2:m7.13- | a1:m7.13- | f4.:7.5-/ef f8:7.5- f2:7.5- | f1:7.5- |
  r1 | r1 | r1 | r1 | r1 | r1 | 
  r1 | r1 | r1 | r1 | r1 | r1 | 
  r1 | r1 | r1 | r1 | 
  r1 | r1 | r1 | r1 |   
}

bassChordsCoda  = \chordmode {  \set chordChanges = ##t  \set chordNameExceptions = #flamingChordExceptions 
  \set noChordSymbol = ##f 
  r1 | r1 | r1 | r1 | 
  r1 | r1 | r1 | r1 |  
}


chordsSong = \chordmode { \set chordChanges = ##t \set chordNameExceptions = #flamingChordExceptions
  \set noChordSymbol = ##f

    \tag SegmentVerseI \relative c' {
        s1*7
    }
    \tag SegmentChorusI \relative c' {
        s1
        s1*6 
    }
    \tag SegmentVerseII \relative c' {
        s1*15
    }
    \tag SegmentChorusII \relative c' {
        s1
        s1*7
        s1*4
        s1
    }

    \tag SegmentVerseIII \relative c' {
        s1*12
        s1*12
    }
    \tag SegmentChorusIII \relative c' {
        s1*12
    }
    \tag SegmentBridgeI \relative c' {
        s1*8
    }

    \tag SegmentVerseSolo \relative c' {
        s1*12
        s1*12
    }
    \tag SegmentChorusSolo \relative c' {
        s1*12
    }
    \tag SegmentBridgeSolo \relative c' {
        s1*8
    }

    \tag SegmentVerseIV \relative c' {
        s1*7
    }
    \tag SegmentChorusIV \relative c' {
        s1*1
        s1*3 
    }
    \tag SegmentCoda \relative c' {
        s1*5 \breath
        s1
        s1
        s1
    }
}
chordsLead = \chordmode {  \set chordChanges = ##t  \set chordNameExceptions = #flamingChordExceptions 
    \tag SegmentVerseI \relative c' {
        s1*7
    }
    \tag SegmentChorusI \relative c' {
        s1
        s1*6 
    }
    \tag SegmentVerseII \relative c' {
        s1*15
    }
    \tag SegmentChorusII \relative c' {
        s1
        s1*7
        s1*4
        s1
    }

    \tag SegmentVerseIII \relative c' {
        s1*12
        s1*12
    }
    \tag SegmentChorusIII \relative c' {
        s1*12
    }
    \tag SegmentBridgeI \relative c' {
        s1*8
    }

    \tag SegmentVerseSolo \relative c' {
        s1*12
        s1*12
    }
    \tag SegmentChorusSolo \relative c' {
        s1*12
    }
    \tag SegmentBridgeSolo \relative c' {
        s1*8
    }

    \tag SegmentVerseIV \relative c' {
        s1*7
    }
    \tag SegmentChorusIV \relative c' {
        s1*1
        s1*3 
    }
    \tag SegmentCoda \relative c' {
        s1*5 
        s1
        s1
        s1
    }
}

chordsPart = \chordmode {  \set chordChanges = ##t  \set chordNameExceptions = #flamingChordExceptions 
    \tag SegmentVerseI \relative c' {
        s1*7
    }
    \tag SegmentChorusI \relative c' {
        s1
        s1*6 
    }
    \tag SegmentVerseII \relative c' {
        s1*15
    }
    \tag SegmentChorusII \relative c' {
        s1
        s1*7
        s1*4
        s1
    }

    \tag SegmentVerseIII \relative c' {
        s1*12
        s1*12
    }
    \tag SegmentChorusIII \relative c' {
        s1*12
    }
    \tag SegmentBridgeI \relative c' {
        s1*8
    }

    \tag SegmentVerseSolo \relative c' {
        s1*12
        s1*12
    }
    \tag SegmentChorusSolo \relative c' {
        s1*12
    }
    \tag SegmentBridgeSolo \relative c' {
        s1*8
    }

    \tag SegmentVerseIV \relative c' {
        s1*7
    }
    \tag SegmentChorusIV \relative c' {
        s1*1
        s1*3 
    }
    \tag SegmentCoda \relative c' {
        s1*5
        s1
        s1
        s1
    }
}


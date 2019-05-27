\include "../flaming-libs/flaming-chords.ily"

restsChorusOne = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    s1*8 ||
    s1*8 ||
    s1*8 ||
    s1*12 ||
}
chordsChorusOne = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    af1 | bf2:m7 ef:7 | b1:m7 | e:7 | 
    a:m7 | d:7 | bf:m7 | ef:7 ||

    af1 | bf2:m7 ef:7 | b1:m7 | e:7 | 
    a2:m7 d:7 | bf:m7 ef:7 | r4 af2. ~ | 1 ||

    af1:m7 | df:7 | af:m7 | df:7 | 
    gf | a2:m7 d:7 | bf1:m7 | ef:7 ||

    af1 | bf2:m7 ef:7 | b1:m7 | e:7 | 
    a:m7 | d:7 | b:m7 | e:7 |
    a2:m7 d:7 | bf:m7 ef:7 | r4 d2.:7.7+.11+ ~ | 1 ||
}
restsCoda = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    s1*16    
}
chordsCoda = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    a2:m7 d:7 | bf:m7 ef:7 | b1:m7 | e:7 |
    a1:m7 | d:7 | b:m7 | e:7 |
    a2:m7 d:7 | bf:m7 ef:7 | b1:m7 | e:7 |
    a2:m7 d:7 | bf:m7 ef:7 | r2 \tuplet 3/2 { r2 bf4:m7 } | \tuplet 3/2 { r4 ef4:9 r4 } af2:aug7.9+.11+ ||
}

chordsGlobal = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    \tag SegmentOne {
        \chordsChorusOne
    }
    \tag SegmentTwo {
        af1 | bf2:m7 ef:7 | b1:m7 | e:7 | 
        a:m7 | d:7 | bf:m7 | ef:7 ||

        af1 | bf2:m7 ef:7 | b1:m7 | e:7 | 
        a2:m7 d:7 | bf:m7 ef:7 | r4 af2. ~ | 1 ||

        af1:m7 | df:7 | af:m7 | df:7 | 
        gf | a2:m7 d:7 | bf1:m7 | ef:7 ||

        af1 | bf2:m7 ef:7 | b1:m7 | e:7 | 
        a:m7 | d:7 | b:m7 | e:7 |
        a2:m7 d:7 | bf:m7 ef:7 | r4 d2.:7.7+.11+ ~ | 1 ||
    }
    \tag SegmentThree {
        af1 | bf2:m7 ef:7 | b1:m7 | e:7 | 
        a:m7 | d:7 | bf:m7 | ef:7 ||

        af1 | bf2:m7 ef:7 | b1:m7 | e:7 | 
        a2:m7 d:7 | bf:m7 ef:7 | r4 af2. ~ | 1 ||

        af1:m7 | df:7 | af:m7 | df:7 | 
        gf | a2:m7 d:7 | bf1:m7 | ef:7 ||

        af1 | bf2:m7 ef:7 | b1:m7 | e:7 | 
        a:m7 | d:7 | b:m7 | e:7 |
        a2:m7 d:7 | bf:m7 ef:7 | r4 d2.:7.7+.11+ ~ | 1 ||
    }
    \tag SegmentFour {
        af1 | bf2:m7 ef:7 | b1:m7 | e:7 | 
        a:m7 | d:7 | bf:m7 | ef:7 ||

        af1 | bf2:m7 ef:7 | b1:m7 | e:7 | 
        a2:m7 d:7 | bf:m7 ef:7 | r4 af2. ~ | 1 ||

        af1:m7 | df:7 | af:m7 | df:7 | 
        gf | a2:m7 d:7 | bf1:m7 | ef:7 ||

        af1 | bf2:m7 ef:7 | b:m7 e:7 | b:m7 e:7 | 
        a1:m7 | d:7 | b:m7 | e:7 |
        a2:m7 d:7 | bf:m7 ef:7 | b1:m7 | e:7 ||

        \chordsCoda
    }
}

chordsGlobalRhythm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    \tag SegmentOne {
        \chordsChorusOne
    }
    \tag SegmentTwo {
        af1 | bf2:m7 ef:7 | b1:m7 | e:7 | 
        a:m7 | d:7 | bf:m7 | ef:7 ||

        af1 | bf2:m7 ef:7 | b1:m7 | e:7 | 
        a2:m7 d:7 | bf:m7 ef:7 | r4 af2. ~ | 1 ||

        af1:m7 | df:7 | af:m7 | df:7 | 
        gf | a2:m7 d:7 | bf1:m7 | ef:7 ||

        af1 | bf2:m7 ef:7 | b1:m7 | e:7 | 
        a:m7 | d:7 | b:m7 | e:7 |
        a2:m7 d:7 | bf:m7 ef:7 | r4 d2.:7.7+.11+ ~ | 1 ||
    }
    \tag SegmentFour {
        af1 | bf2:m7 ef:7 | b1:m7 | e:7 | 
        a:m7 | d:7 | bf:m7 | ef:7 ||

        af1 | bf2:m7 ef:7 | b1:m7 | e:7 | 
        a2:m7 d:7 | bf:m7 ef:7 | r4 af2. ~ | 1 ||

        af1:m7 | df:7 | af:m7 | df:7 | 
        gf | a2:m7 d:7 | bf1:m7 | ef:7 ||

        af1 | bf2:m7 ef:7 | b:m7 e:7 | b:m7 e:7 | 
        a1:m7 | d:7 | b:m7 | e:7 |
        a2:m7 d:7 | bf:m7 ef:7 | b1:m7 | e:7 ||

        \chordsCoda
    }
}

chordsGlobalSongForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    \tag SegmentOne {
        \chordsChorusOne 
    }
}

chordsGlobalCoda = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    \tag SegmentFour {
        b1:m7 | e:7 ||
        \chordsCoda
    }
}

chordsPart = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    \tag SegmentOne {
        \restsChorusOne
    }
    \tag SegmentTwo {
        \restsChorusOne
    }
    \tag SegmentThree {
        af1 | bf2:m7 ef:7 | b1:m7 | e:7 | 
        a:m7 | d:7 | bf:m7 | ef:7 ||

        af1 | bf2:m7 ef:7 | b1:m7 | e:7 | 
        a2:m7 d:7 | bf:m7 ef:7 | r4 af2. ~ | 1 ||

        af1:m7 | df:7 | af:m7 | df:7 | 
        gf | a2:m7 d:7 | bf1:m7 | ef:7 ||

        af1 | bf2:m7 ef:7 | b1:m7 | e:7 | 
        a:m7 | d:7 | b:m7 | e:7 |
        a2:m7 d:7 | bf:m7 ef:7 | r4 d2.:7.7+.11+ ~ | 1 ||
    }
    \tag SegmentFour {
        \restsChorusOne
        \restsCoda
    }
}


\include "../flaming-libs/flaming-chords.ily"

chordsSongPart = \chordmode { \set chordChanges = ##t \set chordNameExceptions = #flamingChordExceptions
  \set noChordSymbol = "" 
    \tag SegmentIntro { 

    }
    \tag SegmentFunk { 
    }
    \tag SegmentAfroCuban { 
    }
    \tag SegmentSoloFunk { 
    }
    \tag SegmentSoloAfroCuban { 
    }
    \tag SegmentDrum { 
    }
}

chordsSongScore = \chordmode { \set chordChanges = ##t \set chordNameExceptions = #flamingChordExceptions
  \set noChordSymbol = "" 
    \tag SegmentIntro { 
    }
    \tag SegmentFunk { 
    }
    \tag SegmentAfroCuban { 
    }
    \tag SegmentSoloFunk { 
    }
    \tag SegmentSoloAfroCuban { 
    }
    \tag SegmentDrum { 
    }
}

chordsPart = \chordmode { \set chordChanges = ##t \set chordNameExceptions = #flamingChordExceptions
  \set noChordSymbol = ##f

    \tag SegmentIntro { 
    }
    \tag SegmentFunk { 
    }
    \tag SegmentAfroCuban { 
    }
    \tag #'MIDI {
    }
    \tag SegmentSoloFunk { 
    }
    \tag SegmentSoloAfroCuban { 
    }
    \tag SegmentDrum { 
    }
}

chordsPartScore = \chordmode { \set chordChanges = ##t \set chordNameExceptions = #flamingChordExceptions
  \set noChordSymbol = ##f

    \tag SegmentIntro { 
    }
    \tag SegmentFunk { 
    }
    \tag SegmentAfroCuban { 
    }
    \tag #'MIDI {
    }
    \tag SegmentSoloFunk { 
    }
    \tag SegmentSoloAfroCuban { 
    }
    \tag SegmentDrum { 
    }
}

chordsLead = \chordmode {  \set chordChanges = ##t  \set chordNameExceptions = #flamingChordExceptions 
    \chordsPart       
}


\include "../flaming-libs/flaming-chords.ily"

chordsSong = \chordmode { \set chordChanges = ##t \set chordNameExceptions = #flamingChordExceptions
  \set noChordSymbol = ##f

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
    }
}
chordsLead = \chordmode {  \set chordChanges = ##t  \set chordNameExceptions = #flamingChordExceptions 
	\chordsSong		  
}
chordsPart = \chordmode {  \set chordChanges = ##t  \set chordNameExceptions = #flamingChordExceptions 
  \noChordsSong
}


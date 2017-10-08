\include "../flaming-libs/flaming-chords.ily"

noChordsSong = \chordmode { \set chordChanges = ##t \set chordNameExceptions = #flamingChordExceptions { R1*14 } }
chordsSong = \chordmode { \set chordChanges = ##t \set chordNameExceptions = #flamingChordExceptions
  \set noChordSymbol = ##f
}

chordsSongScore = \chordmode {  \set chordChanges = ##t  \set chordNameExceptions = #flamingChordExceptions 
    \chordsSong
}
chordsSongLead = \chordmode {  \set chordChanges = ##t  \set chordNameExceptions = #flamingChordExceptions 
	\chordsSong		  
}
chordsSongPart = \chordmode {  \set chordChanges = ##t  \set chordNameExceptions = #flamingChordExceptions 
  \noChordsSong
}

noChordsCoda = \chordmode { \set chordChanges = ##t \set chordNameExceptions = #flamingChordExceptions { R1*8 } }
chordsCoda  = \chordmode {  \set chordChanges = ##t  \set chordNameExceptions = #flamingChordExceptions 
}

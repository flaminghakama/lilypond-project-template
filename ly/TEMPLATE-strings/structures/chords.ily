\include "../flaming-libs/flaming-chords.ily"

noChordsSong = \chordmode { 
	\set chordChanges = ##t 
	\set chordNameExceptions = #flamingChordExceptions { R1*14 } 
}
chordsSong = \chordmode { 
	\set chordChanges = ##t 
	\set chordNameExceptions = #flamingChordExceptions
  	\set noChordSymbol = ##f
}

noChordsCoda = \chordmode { 
	\set chordChanges = ##t 
	\set chordNameExceptions = #flamingChordExceptions { R1*8 } 
}
chordsCoda  = \chordmode {  
	\set chordChanges = ##t  
	\set chordNameExceptions = #flamingChordExceptions 
}

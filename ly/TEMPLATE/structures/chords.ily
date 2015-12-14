\include "../flaming-libs/flaming-chords.ily"

noChordsA = \chordmode { \set chordChanges = ##t \set chordNameExceptions = #flamingChordExceptions { R1*14 } }
chordsA = \chordmode { \set chordChanges = ##t \set chordNameExceptions = #flamingChordExceptions
  \set noChordSymbol = ##f
}

noChordsB = \chordmode { \set chordChanges = ##t \set chordNameExceptions = #flamingChordExceptions { R1*24 } }
chordsB = \chordmode {  \set chordChanges = ##t  \set chordNameExceptions = #flamingChordExceptions 
}

chordsC = \chordmode {  \set chordChanges = ##t  \set chordNameExceptions = #flamingChordExceptions 
}


chordsHeadScore = \chordmode {  \set chordChanges = ##t  \set chordNameExceptions = #flamingChordExceptions 
  \chordsA
  \chordsB
}
chordsHeadLead = \chordmode {  \set chordChanges = ##t  \set chordNameExceptions = #flamingChordExceptions 
  \chordsA
  \chordsB
}
chordsHeadPart = \chordmode {  \set chordChanges = ##t  \set chordNameExceptions = #flamingChordExceptions 
  \noChordsA
  \noChordsB
}
chordsSolo = \chordmode {  \set chordChanges = ##t  \set chordNameExceptions = #flamingChordExceptions 
  \chordsC
}

noChordsCoda = \chordmode { \set chordChanges = ##t \set chordNameExceptions = #flamingChordExceptions { R1*8 } }
chordsCoda  = \chordmode {  \set chordChanges = ##t  \set chordNameExceptions = #flamingChordExceptions 
}

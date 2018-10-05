\version "2.19.15" 
\include "ly/SONG/structures/header.ily"
\include "ly/SONG/structures/forms.ily"
\include "ly/SONG/structures/chords.ily"
\include "ly/SONG/music/INSTRUMENT.ily"

INSTRUMENTGlobalSong = \globalSong {
    \INSTRUMENTSong
}

INSTRUMENTGlobalCoda = \globalCoda {
    \INSTRUMENTCoda
}

\include "ly/SONG/books/PART.ily"
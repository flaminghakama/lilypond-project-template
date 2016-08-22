\version "2.19.15" 
\include "ly/SONG/structures/header.ily"
\include "ly/SONG/structures/forms.ily"
\include "ly/SONG/structures/chords.ily"
\include "ly/SONG/structures/lyrics.ily"
\include "ly/SONG/instruments/INSTRUMENT.ily"

INSTRUMENTGlobalSong = \globalSong {
    \key f \major
    \INSTRUMENTSong
}

INSTRUMENTGlobalCoda = \globalCoda {
    \key f \major
    \INSTRUMENTCoda
}

\include "ly/SONG/books/PART.ily"
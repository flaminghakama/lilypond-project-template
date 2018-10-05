\version "2.19.15" 
\include "ly/SONG/structures/header.ily"
\include "ly/SONG/structures/forms.ily"
\include "ly/SONG/structures/chords.ily"
\include "ly/SONG/structures/lyrics.ily"
\include "ly/SONG/music/INSTRUMENT.ily"

INSTRUMENTGlobalHead = \globalHead {
    \key bf \minor
    \INSTRUMENTHead
}
INSTRUMENTGlobalMontuno = \globalMontuno {
    \key bf \minor
    \INSTRUMENTMontuo
}
INSTRUMENTGlobalSolos = \globalSolos {
    \key bf \minor
    \INSTRUMENTSolos
}
INSTRUMENTGlobalCoda = \globalCoda {
    \key bf \minor
    \INSTRUMENTCoda
}

\include "ly/SONG/books/PART.ily"
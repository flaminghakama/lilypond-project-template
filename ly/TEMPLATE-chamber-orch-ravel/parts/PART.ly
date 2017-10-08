\version "2.19.15" 
\include "ly/SONG/structures/header.ily"
\include "ly/SONG/structures/forms.ily"
\include "ly/SONG/structures/chords.ily"
\include "ly/SONG/structures/lyrics.ily"
\include "ly/SONG/music/INSTRUMENT.ily"

INSTRUMENTCues = \relative c { 
    \new CueVoice {
        \clef treble
        \cueViolinI
        \quoteDuring #"bass" { }
    }
}

\include "ly/SONG/books/PART.ily"
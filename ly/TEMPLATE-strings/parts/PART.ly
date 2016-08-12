\version "2.19.15" 
\include "ly/SONG/structures/header.ily"
\include "ly/SONG/structures/forms.ily"
\include "ly/SONG/structures/chords.ily"
\include "ly/SONG/structures/lyrics.ily"
\include "ly/SONG/instruments/INSTRUMENT.ily"

INSTRUMENTCues = \relative c { 
    \new CueVoice {

		\clef treble
		\cueViolinI
		\quoteDuring #"violinSolo" { s1 }

		\clef treble
		\cueViolinI
		\quoteDuring #"violinI" { s1 }

		\clef treble
		\cueViolinII
		\quoteDuring #"violinII" { s1 }

		\clef alto
		\cueViola
		\quoteDuring #"viola" { s1 }

		\clef bass
		\cueCello
		\quoteDuring #"cello" { s1 }

		\clef bass
		\cueBass
		\quoteDuring #"bass" { s1 }
	}
}

INSTRUMENTCuesCoda = \relative c { 
    \new CueVoice {

		\clef treble
		\cueViolinI
		\quoteDuring #"violinSoloCoda" { s1 }

		\clef treble
		\cueViolinI
		\quoteDuring #"violinICoda" { s1 }

		\clef treble
		\cueViolinII
		\quoteDuring #"violinIICoda" { s1 }

		\clef alto
		\cueViola
		\quoteDuring #"violaCoda" { s1 }

		\clef bass
		\cueCello
		\quoteDuring #"celloCoda" { s1 }

		\clef bass
		\cueBass
		\quoteDuring #"bassCoda" { s1 }
	}
}

\include "ly/SONG/books/PART.ily"
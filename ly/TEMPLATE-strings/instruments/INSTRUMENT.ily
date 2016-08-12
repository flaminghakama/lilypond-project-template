INSTRUMENTSong = \relative c' {
}

INSTRUMENTCoda = \relative c' {
}

INSTRUMENTGlobalSong = \globalSong \INSTRUMENTSong
INSTRUMENTGlobalCoda = \globalCoda \INSTRUMENTCoda

\addQuote "INSTRUMENT" { \INSTRUMENTSong }
\addQuote "INSTRUMENTCoda" { \INSTRUMENTCoda }

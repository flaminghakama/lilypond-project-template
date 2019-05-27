%\new ChordNames \transpose TRANSPOSITION { \chordsGlobal }
\new Staff = "INSTRUMENT" { 
    \compressFullBarRests
    \override MultiMeasureRest.expand-limit = #1
    \tag Score { \set Staff.instrumentName = "POET" }
    \tag Part { \set Staff.instrumentName = "" }
    \set Staff.instrumentName = ""
    \set Staff.shortInstrumentName = #""
    \override DynamicLineSpanner #'staff-padding = #3.0
    \accidentalStyle modern-voice-cautionary
    \clef CLEF
    \transpose TRANSPOSITION { \INSTRUMENTGlobal }
}
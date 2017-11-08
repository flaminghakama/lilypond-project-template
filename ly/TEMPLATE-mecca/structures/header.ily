\version "2.19.15" 
\include "english.ly"
\include "articulate.ly"

composerName = "Tommi Avicolli Mecca"
arrangerName = "D. Elaine Alt"
titleLeft = ""
titleRight = ""

\include "../flaming-libs/flaming-paper.ily"

\header {
    source = ""
    style = ""
    copyright = \markup { \tiny "copyright © 2017 D. Elaine Alt" } 
    lastupdated = ""
    title = ""
    poet = ""
    composer = \markup { \italic { "composed by" } \composerName }
    arranger = \markup { \italic { "transcribed by" } \arrangerName }
    tagline = ""
}

\include "../flaming-libs/flaming-header.ily"

\paper {

  page-breaking = #ly:minimal-breaking

  ragged-bottom = ##t
  ragged-last-bottom = ##t

  #(define fonts
    (make-pango-font-tree "Hardwood" 
                          "Highlander ITC TT" 
                          "LilyJAZZText"
                           (/ myStaffSize 20)))
}
\include "../flaming-libs/flaming-fonts.ily"


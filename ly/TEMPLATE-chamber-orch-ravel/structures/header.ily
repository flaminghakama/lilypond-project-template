\version "2.19.15" 
\include "english.ly"
\include "articulate.ly"

titleLeft = "À la manière"
titleRight = "de Borodine"
instrumentName = ""
composerName = "M. Ravel"
arrangerName = "D. Elaine Alt"

\include "../flaming-libs/flaming-paper.ily"

\header {
    source = ""
    style = ""
    copyright = \markup { \tiny "copyright © 2017 D. Elaine Alt" } 
    lastupdated = ""
    title = \markup { \italic \fontsize #4 \bold { \titleLeft \titleRight }  }
    poet = ""
    composer = \markup \italic \composerName
    tagline = ""
}

\paper {

  top-margin = #14
  right-margin = #17

  page-breaking = #ly:minimal-breaking

  ragged-bottom = ##t
  ragged-last-bottom = ##t

  % "CasablancaAntique" 
  #(define fonts
    (make-pango-font-tree "Dominican" 
                          "Highlander ITC TT" 
                          "LilyJAZZText"
                           (/ myStaffSize 20)))
}
\include "../flaming-libs/flaming-fonts.ily"

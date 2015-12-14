\version "2.19.15" 
\include "english.ly"

titleLeft = "Octagon"
titleRight = " Arbiter"
instrumentName = ""
composerName = "D. Elaine Alt"

\include "../flaming-libs/flaming-paper.ily"

\header {
    source = ""
    style = ""
    copyright = \markup { \tiny "copyright © 2015 D. Elaine Alt" } 
    lastupdated = ""
    title = \markup { \italic \fontsize #4 \bold { \titleLeft \titleRight }  }
    poet = ""
    composer = \markup \italic \composerName
    tagline = ""
}

\paper {

  top-margin = #14
  right-margin = #17

  % First page spacing after header
  markup-system-spacing #'padding = #2

  % Subsequent page spacing after header
  top-system-spacing #'minimum-distance = #18

  % Spacing in between systems
  system-system-spacing #'basic-distance = #24

  page-breaking = #ly:minimal-breaking

  ragged-bottom = ##t
  ragged-last-bottom = ##t

  #(define fonts
    (make-pango-font-tree "Alternity" 
                          "Highlander ITC TT" 
                          "LilyJAZZText"
                           (/ myStaffSize 20)))
}
\include "../flaming-libs/flaming-fonts.ily"

toCoda = \markup { \translate #'(-1.6 . 1.75) \huge \bold \musicglyph #"scripts.coda" }
roadmap = \markup { \halign #-2 \center-column { \dSolosWithRepeat \dEndCoda } }




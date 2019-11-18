\version "2.19.15" 
\include "english.ly"
\include "articulate.ly"

titleLeft = "Octagon"
titleRight = "Warrior"
titleFull = "Octagon Warrior"
instrumentName = ""
composerName = "Elaine Paul"

\include "../flaming-libs/flaming-markup.ily"
\include "../flaming-libs/flaming-dynamics.ily"
\include "../flaming-libs/flaming-paper.ily"
\include "../flaming-libs/instrument-names.ily"

\header {
    source = ""
    style = ""
    copyright = \markup { \tiny "copyright © 2015 - 2019 Elaine Paul" } 
    lastupdated = ""
    title = \markup { \italic \fontsize #4 \bold { \titleFull }  }
    poet = ""
    composer = \markup \italic \composerName
    tagline = ""
}

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #2

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #18

  % Spacing in between systems
  system-system-spacing.basic-distance = #18

  % Space after score, before the next score
  score-system-spacing.minimum-distance = #13

  page-breaking = #ly:minimal-breaking

  ragged-bottom = ##t
  ragged-last-bottom = ##t

  #(define fonts
    (make-pango-font-tree "Marker Felt" 
                          "Highlander ITC TT" 
                          "LilyJAZZText"
                           (/ myStaffSize 20)))
}
\include "../flaming-libs/flaming-fonts.ily"


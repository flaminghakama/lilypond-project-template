\version "2.19.15" 
\include "english.ly"
\include "articulate.ly"

titleLeft = "Anne's"
titleRight = "Eyes"
instrumentName = ""
composerName = "Elaine Paul"

\include "../flaming-libs/flaming-paper.ily"
\include "../flaming-libs/flaming-dynamics.ily"
\include "../flaming-libs/flaming-markup.ily"
\include "../flaming-libs/flaming-header.ily"
\include "../flaming-libs/instrument-names.ily"
\include "../flaming-libs/double-mark.ily"

\header {
    source = ""
    style = ""
    copyright = \markup { \tiny "copyright © 1990-2019 D. Elaine Alt" } 
    lastupdated = ""
    title = \markup { \italic \fontsize #4 \bold { \titleLeft \titleRight }  }
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
  system-system-spacing.basic-distance = #24

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

backbeatHit = \relative c'' { 
    r4 \override NoteHead #'style = #'diamond d2. -\tweak minimum-length #3 ~ | 1 ||
    \override NoteHead #'style = #'default
}

breakTransposed = \tag #'Transposed { \break }
pageBreakTransposed = \tag #'Transposed { \pageBreak }


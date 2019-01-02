\version "2.19.15" 
\include "english.ly"
\include "articulate.ly"

titleLeft = "Asli Thokar"
titleRight = "Kaaye"
titleFull = "Asli Thokar Kaaye"
instrumentName = ""
composerNameTitlePage = "D. Sharma"
composerName = "D. Sharma / E. Paul"
arrangerName = "Elaine Paul"

\include "../../flaming-libs/flaming-markup.ily"
\include "../../flaming-libs/flaming-dynamics.ily"
\include "../../flaming-libs/flaming-paper.ily"
\include "../../flaming-libs/instrument-names.ily"

\header {
    source = ""
    style = ""
    copyright = \markup { \tiny "copyright © 2018 Elaine Paul" } 
    lastupdated = ""
    title = \markup { \italic \fontsize #4 \bold { \titleFull }  }
    poet = ""
    composer = \markup \italic { "composed by" \composerNameTitlePage }
    arranger = \markup \italic { "arranged by" \arrangerName }
    tagline = ""
}


\paper {

  top-margin = #14
  right-margin = #17

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
\include "../../flaming-libs/flaming-fonts.ily"

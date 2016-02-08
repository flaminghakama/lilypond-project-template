% stuff to learn to use globally
%\override Staff.TupletBracket #'thickness = #2.25
%\override Staff.AccidentalPlacement #'right-padding = #.25 
%\override Staff.AccidentalPlacement #'left-padding = #1.55 
%\override Staff.TimeSignature   #'style = #'numbered
%\set Score.markFormatter = #format-mark-box-letters
%\set Score.doubleRepeatType = #":..:"

emDash = \markup \char ##x2014
titleKern = "   "
pageNumberKern = " "

\defineBarLine "||.[|:" #'("||" "[|:" "")
\defineBarLine ":|].||" #'(":|]" "" "||")
\defineBarLine ":|].[|:" #'(":|]" "[|:" "")

%#(set-default-paper-size "letter" 'landscape)
#(set-default-paper-size "letter")

%
%  Used to remove poet and composer from running header
%  presumably when the header would be duplicated 
%  from the author Helge Kruse <Helge.Kruse@gmx.net>:
%    Bookpart first page and last page predicates
%
%  Usage:
%            \on-the-fly #not-part-first-page \fromproperty #'header:poet
%
#(define (not-part-first-page layout props arg)
   (if (= (chain-assoc-get 'page:page-number props -1)
          (ly:output-def-lookup layout 'first-page-number))
       empty-stencil
       (interpret-markup layout props arg)))

\paper {

    between-system-space = 3.5\cm
    between-system-padding = #10
    ragged-bottom=##t
    ragged-last-bottom=##t
    ragged-right=##f
    ragged-right-last=##t
    ragged-last = ##f%\emDash

    print-page-number = ##t
    print-first-page-number = ##f
    oddHeaderMarkup = \markup {
        \on-the-fly #print-page-number-check-first
        \fill-line {
            \fromproperty #'header:poet
            \line { 
                \titleLeft
                \titleKern
                \huge "-"
                \pageNumberKern
                \lower #0.55 \fontsize #6 \fromproperty #'page:page-number-string
                \pageNumberKern
                \huge "-"
                \titleKern
                \titleRight
            }
            \composerName
        }
    }
    evenHeaderMarkup = \oddHeaderMarkup
    oddFooterMarkup = \markup { \fill-line { \fromproperty #'header:copyright } }
    evenFooterMarkup = \oddFooterMarkup

    myStaffSize = #20
    #(define fonts
      (make-pango-font-tree "Papyrus"
                            "Nimbus Sans"
                            "Luxi Mono"
                             (/ myStaffSize 20)))

    #(define top-margin (* 15 mm)) % The margin between header and top of the page.

    #(define foot-separation (* 18 mm)) % Space between the bottom-most music system and page footer
    #(define bottom-margin (* 1 cm))

    top-system-spacing #'minimum-distance = #16
    #(set! text-font-defaults
        (cons '(box-padding . 0.7) text-font-defaults))
}

\layout {
    ragged-right = ##f 
    indent = .75\cm
    short-indent = .25\cm
}


% For metric modulcations
%  \tempo \markup { \concat { \smaller \general-align #Y #DOWN \note #"8" #1
%                             " = "
%                             \smaller \general-align #Y #DOWN \note #"4" #1
%                             "   Swing Two Feel" 
%                            }
%                 }


breath = {
  \once \override BreathingSign #'text = \markup {
    \raise #2 { \halign #1 
      \musicglyph #"scripts.rcomma"
    }
  }
  \breathe
}

parenBreath = {
  \once \override BreathingSign #'text = \markup {
    \raise #2 { \halign #1 
       \musicglyph #"scripts.rcomma"
    }
  }
  \breathe 
}

fermat = \markup { \translate #(cons 1 -4 ) \musicglyph #"scripts.ufermata" }

dolc = \markup { \raise #2 { dolce } }

codaSign = \markup { \musicglyph #"scripts.coda" }
toCoda = \markup { \translate #'(-1.6 . 1.75) \huge \bold \musicglyph #"scripts.coda" }
partCoda = \markup { \translate #'( 7 . 1.75) \huge \bold \musicglyph #"scripts.coda" }
segnoSign = \markup { \bold \musicglyph #"scripts.segno" }

delSeg = \markup { \bold "D.S." }
alCoda = \markup { \bold "al  " \musicglyph #"scripts.coda"  }
dsAlCoda = \markup { \halign #-2 \center-column { \delSeg \alCoda } }
dsCoda = \markup { \delSeg \alCoda }

dfine = \markup { \bold "Fine" }
dcFine = \markup { \bold "D.C. al Fine" }
dsFine = \markup { \bold "D.S. al Fine" }
%dsCoda = \markup { \bold "D.S. al  " \musicglyph #"scripts.coda" }
dcCoda = \markup { \bold "D.C. al  " \musicglyph #"scripts.coda" }
dcCueCoda = \markup { \bold "On Cue: D.C. al  " \musicglyph #"scripts.coda" }
dEndCoda = \markup { \bold "To end: D.C. al  " \musicglyph #"scripts.coda" }
dsEndCoda = \markup { \bold "To end: D.S. al  " \musicglyph #"scripts.coda" }
toCoda = \markup { \huge \bold \musicglyph #"scripts.coda" }
dEndFine = \markup { \bold "To end: D.C. al Fine" }
dEndDSFine = \markup { \bold "To end: D.S. al Fine" }
dEndDSCoda = \markup { \bold "To end: D.S. al Coda" }
dEndDSCodaA = \markup { \bold "To end:" \box A1 "D.S. al Coda" }
dFormRCRVV = \markup { \bold "(Rubato Chorus Rubato Verse Verse)" }
dSolosDC = \markup { \bold "Solos: D.C." } 
dSolosForm = \markup { \bold "Solos: whole form" } 
dMoreSolosRepeat = \markup { \bold "More solos: repeat"  } 
dSolosFormRepeat = \markup { \bold "Solos: whole form w/ repeats" } 
dSolosWithRepeat = \markup { \bold "To Solos: D.S. w/ repeats" } 
dSolosRepeat = \markup { \bold "Solos: repeat Solo Backgrounds" } 
dSolosRepeatA = \markup { \bold "More solos: repeat from " \box A4  } 
dSolosDCForm = \markup { \bold "Solos: D.C. whole form" } 
dSolosAABA = \markup { \bold "Solos: AABA" }
dSolosDS = \markup { \bold "Solos: D.S." }
dSolosDSS = \markup { \bold "Solos: D.S.S." }
toSolos = \markup { \bold "    To Solos" }
dc = \markup { \halign #-2 \center-column { \dSolosDS \dEndCoda } }
dsSolosCoda = \markup { \halign #-2 \center-column { \dSolosWithRepeat \dsEndCoda } }
toSolos = \markup { \halign #-2 \center-column { \bold "Go to next page"  \bold "For solos w/ backgrounds" } }
bgCue = \markup { }
justDs = \markup { \bold "D.S." }
withRepeats = \markup { \bold "(with repeats)" }
dsRepeats = \markup { \halign #-2 \center-column { \justDs \withRepeats } }
secondTimeOnly = \markup { \large \bold "2nd X Only" }
bothTimes = \markup { \large \bold "Both X" }
roadmap = \markup { \halign #-2 \center-column { \dSolosWithRepeat \dEndCoda } }


breakPart = \tag #'Part { \break }
breakScore = \tag #'Score { \break }
breakFlute = \tag #'Flute { \break }
breakPiccolo = \tag #'Piccolo { \break }
breakLead = \tag #'Lead { \break }
breakCondensed = \tag #'Condensed { \break }
breakRhythm = \tag #'Rhythm { \break }
breakMelody = \tag #'Melody { \break }
breakClave = \tag #'Clave { \break }

pageBreakPart = \tag #'Part { \pageBreak }
pageBreakScore = \tag #'Score { \pageBreak }
pageBreakFlute = \tag #'Flute { \pageBreak }
pageBreakPiccolo = \tag #'Piccolo { \pageBreak }
pageBreakLead = \tag #'Lead { \pageBreak }
pageBreakCondensed = \tag #'Condensed { \pageBreak }
pageBreakRhythm = \tag #'Rhythm { \pageBreak }
pageBreakMelody = \tag #'Melody { \pageBreak }
pageBreakClave = \tag #'Clave { \pageBreak }



mfp = #(make-dynamic-script "mfp")
fmp = #(make-dynamic-script "fmp")
sffz = #(make-dynamic-script "sffz")

 xppp = \tweak stencil ##f \ppp
 xpp = \tweak stencil ##f \pp
 xp = \tweak stencil ##f \p
 xmp = \tweak stencil ##f \mp
 xmf = \tweak stencil ##f \mf
 xf = \tweak stencil ##f \f
 xff = \tweak stencil ##f \ff
 xfff = \tweak stencil ##f \fff

low = #(define-music-function (parser location) () #{ \change Staff = "lower" #})
hi = #(define-music-function (parser location) () #{ \change Staff = "upper" #})

notuple = { \once \override TupletNumber #'stencil = ##f  \once \override TupletBracket #'stencil = ##f }

tagged = #(define-music-function (parser location passageScore passageMidi) (ly:music? ly:music?) #{
       \tag #'Score { $passageScore }
       \tag #'Midi { $passageMidi }
#})
%{  Usage:
    \tagged { s2 s4 \tag #'OneTime { <>\fermata } s8 \tag #'OneTime { <>\fermata } s8 } { \time 6/4 s1. \time 2/2 } \bar "||"
%}


%% Define a music-filter function, which is applied to each event. If it 
%  returns false, the corresponding event is removed from the music. In our 
%  case we want to remove all dynamics, text markups, articulations and all
%  markups assigned to MultiMeasures (which are MultiMeasureTextEvents, NOT
%  TextScriptEvent, see the section "Full measure rests" in the Notation 
%  Reference)
#(define (filterOneEvent event)
( let ( (eventname (ly:music-property  event 'name)) )
 (not
  (or     ;; add here event name you do NOT want
   (eq? eventname 'MultiMeasureTextEvent)
   (eq? eventname 'AbsoluteDynamicEvent)
   (eq? eventname 'CrescendoEvent)
   (eq? eventname 'DerescendoEvent)
   (eq? eventname 'TextScriptEvent)
   (eq? eventname 'ArticulationEvent)
  )
 )
))

filtermusic = #(define-music-function (parser location music) (ly:music?)
   (music-filter filterOneEvent music)
)


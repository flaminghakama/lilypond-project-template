emDash = \markup \char ##x2014
titleKern = "   "
pageNumberKern = " "

\defineBarLine "||.[|:" #'("||" "[|:" "")
\defineBarLine ":|].||" #'(":|]" "" "||")
\defineBarLine ":|].[|:" #'(":|]" "[|:" "")
\defineBarLine "||.S" #'("||" "S" "")
\defineBarLine "||.S[" #'("||" "S[|:" "")
\defineBarLine ":|].S[" #'(":|]" "S[" "")
\defineBarLine ":|].S" #'(":|]" "S" "")
\defineBarLine "||.S[|:" #'("||" "S[|:" "")
\defineBarLine "SS" #'("" "SS" "")


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
rit = \markup { \italic "rit." }

codaSign = \markup { \musicglyph #"scripts.coda" }
toCoda = \markup { \translate #'(-1.6 . 1.75) \huge \bold \musicglyph #"scripts.coda" }
partCoda = \markup { \translate #'( 7 . 1.75) \huge \bold \musicglyph #"scripts.coda" }
segnoSign = \markup { \bold \musicglyph #"scripts.segno" }

delSegAfter = \markup { \translate #'( 20 . 0 ) \huge \bold "D.S." }
delSeg = \markup { \bold "D.S." }
alCoda = \markup { \bold "al  " \musicglyph #"scripts.coda"  }
dsAlCoda = \markup { \halign #-2 \center-column { \delSeg \alCoda } }
dsCoda = \markup { \delSeg \alCoda }
fineSign = \markup { \huge \bold "Fine" }

dfine = \markup { \bold \huge "Fine" }
dcFine = \markup { \bold \huge "D.C. al Fine" }
dsFine = \markup { \bold \huge "D.S. al Fine" }
%dsCoda = \markup { \bold \huge "D.S. al  " \musicglyph #"scripts.coda" }
dcCoda = \markup { \bold \huge "D.C. al  " \musicglyph #"scripts.coda" }
dcCueCoda = \markup { \bold \huge "On Cue: D.C. al " \musicglyph #"scripts.coda" }
dEndCoda = \markup { \bold \huge "To end: D.C. al " \translate #'(0 . 1) \musicglyph #"scripts.coda" }
dEndCodaWithRepeat = \markup { \bold \huge "To end: D.C. al  " \musicglyph #"scripts.coda" " w/ repeat" }
dsEndCoda = \markup { \bold \huge "To end: D.S. al  " \musicglyph #"scripts.coda" }
toCoda = \markup { \huge \bold \musicglyph #"scripts.coda" }
dEndFine = \markup { \bold \huge "To end: D.C. al Fine" }
dEndDSFine = \markup { \bold \huge "To end: D.S. al Fine" }
dEndDSCoda = \markup { \bold \huge "To end: D.S. al Coda" }
dEndDSCodaA = \markup { \bold \huge "To end:" \box A1 "D.S. al Coda" }
dFormRCRVV = \markup { \bold \huge "(Rubato Chorus Rubato Verse Verse)" }
dSolosDC = \markup { \bold \huge "Solos: D.C." } 
dSolosForm = \markup { \bold \huge "Solos: whole form" } 
dMoreSolosRepeat = \markup { \bold \huge "More solos: repeat"  } 
dSolosFormRepeat = \markup { \bold \huge "Solos: whole form w/ repeats" } 
dSolosWithRepeat = \markup { \bold \huge "To Solos: D.S. w/ repeats" } 
dSolosRepeat = \markup { \bold \huge "Solos: repeat Solo Backgrounds" } 
dSolosRepeatA = \markup { \bold \huge "More solos: repeat from " \box A4  } 
dSolosDCForm = \markup { \bold \huge "Solos: D.C. whole form" } 
dMoreSolosDS = \markup { \bold \huge "More Solos: D.S." }
dSolosAABA = \markup { \bold \huge "Solos: AABA" }
dSolosDS = \markup { \bold \huge "Solos: D.S." }
dSolosDSS = \markup { \bold \huge "Solos: D.S.S." }
toSolos = \markup { \bold \huge "    To Solos" }
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
breakViolin = \tag #'Violin { \break }

noBreakPart = \tag #'Part { \noBreak }
noBreakScore = \tag #'Score { \noBreak }
noBreakFlute = \tag #'Flute { \noBreak }
noBreakPiccolo = \tag #'Piccolo { \noBreak }
noBreakLead = \tag #'Lead { \noBreak }
noBreakCondensed = \tag #'Condensed { \noBreak }
noBreakRhythm = \tag #'Rhythm { \noBreak }
noBreakMelody = \tag #'Melody { \noBreak }
noBreakClave = \tag #'Clave { \noBreak }

pageBreakPart = \tag #'Part { \pageBreak }
pageBreakScore = \tag #'Score { \pageBreak }
pageBreakFlute = \tag #'Flute { \pageBreak }
pageBreakPiccolo = \tag #'Piccolo { \pageBreak }
pageBreakSaxophone = \tag #'Saxophone { \pageBreak }
pageBreakLead = \tag #'Lead { \pageBreak }
pageBreakCondensed = \tag #'Condensed { \pageBreak }
pageBreakRhythm = \tag #'Rhythm { \pageBreak }
pageBreakMelody = \tag #'Melody { \pageBreak }
pageBreakClave = \tag #'Clave { \pageBreak }


#(define (make-dynamic-extra dynamic string)
     (make-music
       'AbsoluteDynamicEvent
       'tweaks
         ;; calculate centering for text
         (list (cons (quote X-offset)
           (+ -0.5 (* -0.5 (string-length dynamic)))))
       'text
         (markup #:whiteout
           #:line (
               dynamic
               #:hspace -0.3
               #:normal-text #:italic string))
      ))

#(define (make-extra-dynamic string dynamic)
     (make-music
       'AbsoluteDynamicEvent
       'tweaks
         ;; calculate centering for text
         (list (cons (quote X-offset)
           (+ -0.5 (* -0.5 (string-length dynamic)))))
       'text
         (markup #:whiteout
           #:line (
               #:hspace -0.3
               #:normal-text #:italic string
               dynamic
               ))
      ))

#(define (make-dynamic-extra-dynamic string dynamic stringy)
     (make-music
       'AbsoluteDynamicEvent
       'tweaks
         ;; calculate centering for text
         (list (cons (quote X-offset)
           (+ -0.5 (* -0.5 (string-length dynamic)))))
       'text
         (markup #:whiteout
           #:line (
               #:hspace -0.3
               #:normal-text #:italic string
               dynamic
               #:hspace -0.3
               #:normal-text #:italic stringy
               ))
      ))


ffDolce = #(make-dynamic-extra "ff" "dolce")
pEspr = #(make-dynamic-extra "p" "espr.")
mpEspr = #(make-dynamic-extra "mp" "espr.")
mfEspr = #(make-dynamic-extra "mf" "espr.")
fEspr = #(make-dynamic-extra "f" "espr.")
piuP = #(make-extra-dynamic "piu" "p")
piuF = #(make-extra-dynamic "piu" "f")
piuFEspr = #(make-dynamic-extra-dynamic "piu" "f" "espr.")
subPpp = #(make-extra-dynamic "sub." "ppp")
subPp = #(make-extra-dynamic "sub." "pp")
subP = #(make-extra-dynamic "sub." "p")
subMp = #(make-extra-dynamic "sub." "mp")
subMf = #(make-extra-dynamic "sub." "mf")
subF = #(make-extra-dynamic "sub." "f")
subFf = #(make-extra-dynamic "sub." "ff")
subFff= #(make-extra-dynamic "sub." "fff")


% ffdolce = #(make-dynamic-extra “ff” “dolce”)
% { a1 a\ffdolce a }
 
%{
pppEspr = #(make-dynamic-extra “ppp” “espr.”)
ppEspr = #(make-dynamic-extra “pp” “espr.”)
pEspr = #(make-dynamic-extra “p” “espr.”)
mpEspr = #(make-dynamic-extra “mp” “espr.”)
mfEspr = #(make-dynamic-extra “mf” “espr.”)
fEspr = #(make-dynamic-extra “f” “espr.”)
ffEspr = #(make-dynamic-extra “ff” “espr.”)
fffEspr = #(make-dynamic-extra “fff” “espr.”)
%}

mfp = #(make-dynamic-script "mfp")
ffmf = #(make-dynamic-script "ffmf")
fmp = #(make-dynamic-script "fmp")
smp = #(make-dynamic-script "smp")
smf = #(make-dynamic-script "smf")
sffz = #(make-dynamic-script "sffz")

 xppp = \tweak stencil ##f \ppp
 xpp = \tweak stencil ##f \pp
 xp = \tweak stencil ##f \p
 xmp = \tweak stencil ##f \mp
 xmf = \tweak stencil ##f \mf
 xf = \tweak stencil ##f \f
 xff = \tweak stencil ##f \ff
 xfff = \tweak stencil ##f \fff

deleteDynamics = #(define-music-function (parser location music) (ly:music?) 
 (music-filter 
  (lambda (evt) 
   (not (memq (ly:music-property evt 'name) (list 
       'AbsoluteDynamicEvent 
       'CrescendoEvent 
       'DecrescendoEvent)))) 
     music)) 

low = #(define-music-function (parser location) () #{ \change Staff = "lower" #})
hi = #(define-music-function (parser location) () #{ \change Staff = "upper" #})

notuple = { \once \override TupletNumber #'stencil = ##f  \once \override TupletBracket #'stencil = ##f }

pizz = \markup { \italic pizz. } 
arco = \markup { \italic arco } 
marcato = \markup { \italic marcato } 
ponticello = \markup { \italic ponticello } 
muted = \markup { \italic \column { \lower #1.25 { "con" } "sord." } }
conSord = \markup { \italic "con sord." }
natural = \markup { \italic \column { \lower #1.25 { "senza" } "sord." } } 
senzaSord = \markup { \italic "senza sord." } 
offTheString = \markup { \italic "off the string" } 

cueViolinSolo = { <>^\markup { \italic "solo violin" } }
cueViolinI = { <>^\markup { \italic "violin I" } }
cueViolinII = { <>^\markup { \italic "violin II" } }
cueViola = { <>^\markup { \italic "viola" } }
cueCello = { <>^\markup { \italic "'cello" } }
cueBass = { <>^\markup { \italic "bass" } }

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

#(define (combine-marks mrkup)
  (lambda (grob)
    (let* ((default-stencil (ly:grob-property grob 'stencil))
           (mrkp-stencil (grob-interpret-markup grob mrkup))
           (break-dir (ly:item-break-dir grob)))

      (ly:grob-set-property! grob 'stencil
           (case break-dir
            ((0)
             (ly:stencil-combine-at-edge
               (ly:stencil-aligned-to mrkp-stencil X CENTER)
               Y
               UP
               (ly:stencil-aligned-to default-stencil X CENTER)
               1 ;; padding
               ))
            ((1)
             default-stencil)
            ((-1)
             mrkp-stencil))))))

markEndOfLine =
#(define-music-function (mark mrkp)(ly:music? markup?)
  #{
    \once \override Score.RehearsalMark #'break-visibility = #'#(#t #t #t)
    \once \override Score.RehearsalMark #'before-line-breaking =
      #(combine-marks mrkp)
    $mark
  #})

% \markEndOfLine \mark \default \markup { \musicglyph #"scripts.ufermata" }


%%%%% Multi-measure rest for Jazz drum charts %%%%%
#(define (white-under-parenthetical grob)
  (grob-interpret-markup grob
    #{
      \markup
        \whiteout
        \pad-x #-0.2
        \line \vcenter {
          \huge \normal-text "( "
          #(ly:grob-property grob 'text)
          \huge \normal-text  " )"
      }
    #}))

setInlineMMRN = {
    \set Score.skipBars = ##t
    \override Score.MultiMeasureRest.expand-limit = 1
    \override Score.MultiMeasureRest.minimum-length = #30
}

inlineMMRN = {
    \once \override MultiMeasureRest.layer = #-2
    \once \override MultiMeasureRestNumber.layer = #-1
    \once \override MultiMeasureRestNumber.Y-offset = #0
    \once \override MultiMeasureRestNumber.stencil = #white-under-parenthetical
}

playTime = {
    \inlineMMRN
    <>^\markup { \large \italic "Time" }
}

%{
%    \setInlineMMRN
%    \inlineMMRN
%    R1*4
%    \playTime
%    R1*8
%}

\layout {
    \context {
        \Voice
        \override Slur.height-limit = 3.6
        \override Slur.ratio = 0.36
        \override Slur.minimum-length = 2.3
        \override Slur.details.free-head-distance = 1.0
    }
}


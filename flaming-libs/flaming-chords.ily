\version "2.19.15" 
\include "english.ly"


flamingChordNames = {

% Major
<c e g b>1-\markup { \raise #0.7 { \magnify #0.5 { " " \triangle ##f } \normalsize 7 } }
<c e g b d'>1-\markup { \raise #0.7 { \magnify #0.5 { " " \triangle ##f } \normalsize 9 } }
<c e g b a'>1-\markup { \raise #0.7 { \magnify #0.5 { " " \triangle ##f } \teeny " " \normalsize 13 } }
<c e g b d' a'>1-\markup { \raise #0.7 { \magnify #0.5 { " " \triangle ##f } \normalsize 13 } }
<c e g a d'>1-\markup { \raise #3 { \tiny \center-column { \lower #1.25 { " 6" } " 9" } } }
<c e g b dsharp' fsharp' aflat'>1-\markup { 
    \raise #0.7 { \magnify #0.5 { " " \triangle ##f } \normalsize 9 }
    \raise #3.8 { \tiny \center-column { \lower #1.25 { " #9" } "#11" \raise #1.25 { "b13" } } } 
}

% Minor
<c eflat g>1-\markup { \raise #0.6 { \magnify #0.2 { "  " } \tiny { \char ##x2013 } } }
<c eflat g a>1-\markup { \raise #0.6 { \magnify #0.2 { "  " } \tiny { \char ##x2013 } \magnify #0.2 { "  " }} \raise #0.7 \normalsize 6 }
<c eflat g bflat>1-\markup { \raise #0.6 { \magnify #0.2 { "  " } \tiny { \char ##x2013 } \magnify #0.1 { "  " }} \raise #0.7 \normalsize 7 }

<c eflat g b>1-\markup { \raise #0.6 { \magnify #0.2 { "  " } \tiny { \char ##x2013 } \magnify #0.1 { "  " }} \raise #0.7 {  \magnify #0.5 { " " \triangle ##f } \small 7 } }

<c eflat g bflat d'>1-\markup { \raise #0.6 { \magnify #0.2 { "  " } \tiny { \char ##x2013 } \magnify #0.1 { "  " }} \raise #0.7 \normalsize 9 }
<c eflat g bflat d' f>1-\markup { \raise #0.6 { \magnify #0.2 { "  " } \tiny { \char ##x2013 } \magnify #0.1 { "  " }} \raise #0.7 \normalsize 11 }
<c eflat g bflat d' a'>1-\markup { \raise #0.6 { \magnify #0.2 { "  " } \tiny { \char ##x2013 } \magnify #0.1 { "  " }} \raise #0.7 \normalsize 13 }
<c eflat g bflat d' a'>1-\markup { \raise #0.6 { \magnify #0.2 { "  " } \tiny { \char ##x2013 } \magnify #0.1 { "  " }} \raise #0.7 \normalsize 13 }

% minor7 b13 as "-7 b13"
% <c eflat g bflat aflat'>1-\markup { \raise #0.6 { \magnify #0.2 { "  " } \tiny { \char ##x2013 } \magnify #0.1 { "  " }} \raise #0.7 { \normalsize 7 } \raise #0.9 { \small b13 } }

% minor7 b13 as "- b13"
<c eflat g aflat'>1-\markup { \raise #0.6 { \magnify #0.2 { "  " } \tiny { \char ##x2013 } \magnify #0.1 { "  " }} \teeny " " \raise #1.2 { \tiny \flat } \teeny " " \raise #0.9 { \tiny "13" } }
<c eflat g bflat aflat'>1-\markup { \raise #0.6 { \magnify #0.2 { "  " } \tiny { \char ##x2013 } \magnify #0.1 { "  " }} \raise #0.9 { \small "  b13" } }
<c eflat g bflat d' aflat'>1-\markup { \raise #0.6 { \magnify #0.2 { "  " } \tiny { \char ##x2013 } \magnify #0.1 { "  " }} \raise #0.7 \normalsize "9 b13" }
 
<c eflat g b aflat'>1-\markup { \raise #0.6 { \magnify #0.2 { "  " } \tiny { \char ##x2013 } \magnify #0.1 { "  " }} \raise #0.7 {  \magnify #0.5 { " " \triangle ##f } \small 7 \teeny " " \raise #0.5 { \tiny \flat }  \magnify #0.1 { "  " } \raise #0.3 { \tiny "13" } } }

% Dominant (but not lydian dominant)
<c e g a>1-\markup { \raise #0.7 { \normalsize 6 } }
<c e g bflat>1-\markup { \raise #0.7 { \normalsize 7 } }
<c e g bflat d'>1-\markup { \raise #0.7 { \normalsize 9 } }
<c e g bflat dflat'>1-\markup { \raise #0.7 { \normalsize 7 } \raise #1.2 { \teeny " " \tiny \flat \tiny "9" } }
<c e g bflat dsharp'>1-\markup { \raise #0.7 { \normalsize 7 } \raise #0.9 { \small " #9" } }
<c e g bflat csharp' dsharp'>1-\markup { \raise #0.7 { \normalsize 7 } \raise #3.9 { \tiny \center-column { \lower #1.25 { " b9" } " #9" } } }
<c e g bflat dsharp' fsharp'>1-\markup { \raise #0.7 { \normalsize 7 } \raise #3.9 { \tiny \center-column { \lower #1.25 { " #9" } " #11" } } }
<c e g bflat d' a'>1-\markup { \raise #0.7 { \normalsize 13 } }
<c e g bflat dflat' a'>1-\markup { \raise #0.7 { \normalsize 13 } \raise #0.9 { \small " b9" } }
<c e g bflat aflat'>1-\markup { \raise #0.7 { \normalsize 7 } \raise #0.9 { \small " b13" } }
<c e g bflat d' aflat'>1-\markup { \raise #0.7 { \normalsize 9 } \raise #0.9 { \small " b13" } }

% Dominant b5
<c e gflat bflat>1-\markup { \raise #0.7 { \normalsize 7 } \raise #1.0 { \small " b5" } }
<c e gflat bflat dflat'>1-\markup { \raise #0.7 { \normalsize 7 } \raise #1.0 { \small " b5" } \raise #1.0 { \small " b9" } }

% Half-diminished
<c eflat gflat bflat>1-\markup { \raise #0.5 { \magnify #0.85 \char ##x2205 } }
<c eflat gflat bflat csharp'>1-\markup { \raise #0.5 { \magnify #0.85 \char ##x2205 } }
<c eflat gflat bflat f'>1-\markup { \raise #0.5 { \magnify #0.85 \char ##x2205 } \raise #0.5 { \normalsize 11 } }
<c eflat gflat bflat a'>1-\markup { \raise #0.5 { \magnify #0.85 \char ##x2205 } \raise #0.5 { \normalsize 13 } }

% Diminished
%<c eflat gflat bflatflat f'>1-\markup { \raise #1.5 { \magnify #2 \circle "" } \raise #0.5 { \normalsize 11 } }

% Augmented
<c e gsharp>1-\markup { \raise #0.4 { \magnify #1.3 { + } } }
<c e gsharp bflat>1-\markup { \raise #0.4 { \magnify #1.3 { + } } \raise #0.5 { \normalsize 7 } }
<c e gsharp bflat d'>1-\markup { \raise #0.4 { \magnify #1.3 { + } } \raise #0.5 { \normalsize 9 } }
<c e gsharp bflat csharp' dsharp'>1-\markup { \raise #0.4 { \magnify #1.3 { + } } \raise #0.5 { \normalsize 7 } \raise #3.9 { \tiny \center-column { \lower #1.25 { " b9" } " #9" } } }
<c e gsharp bflat dsharp'>1-\markup { \raise #0.4 { \magnify #1.3 { + } } \raise #0.5 { \magnify #1.2 { \normalsize 7 } } \raise #1.0 \tiny " #9" }
<c e gsharp bflat fsharp'>1-\markup { \raise #0.4 { \magnify #1.3 { + } } \raise #0.5 { \magnify #1.2 { \normalsize 7 } } \raise #1.0 \tiny " #11" }
<c e gsharp dflat'>1-\markup { \raise #0.4 { \magnify #1.3 { + } } \raise #1.2 { \teeny " " \tiny \flat \tiny "9" } }
<c e gsharp bflat dflat'>1-\markup { \raise #0.4 { \magnify #1.3 { + } } \raise #0.5 { \normalsize 7 } \raise #1.2 { \teeny " " \tiny \flat \tiny "9" } }
<c e gsharp bflat d' a'>1-\markup { \raise #0.4 { \magnify #1.3 { + } } \raise #0.5 { \normalsize 13 } }

<c e gsharp bflat dsharp' fsharp'>1-\markup { 
    \raise #0.4 { \magnify #1.3 { + } } 
    \raise #0.7 { \magnify #0.5 { " " \triangle ##f } \normalsize 7 }
    \raise #3.8 { \tiny \center-column { \lower #1.25 { "  9" } " #9" \raise #1.25 "#11" } } 
}

% Lydian 
%<c e g b fsharp'>1-\markup { \raise #1.0 \small " lyd" }
<c e g b fsharp'>1-\markup { \raise #1.0 \tiny "  #11" }
<c e g b d' fsharp'>1-\markup { \raise #0.7 { \magnify #0.5 { " " \triangle ##f } } \raise #3.4 { \teeny \center-column { \lower #1.25 { " 9" } " #11" } } }
<c e g b d' fsharp' a'>1-\markup { \raise #0.7 { \magnify #0.5 { " " \triangle ##f } } \raise #3.4 { \teeny \center-column { \lower #1.25 { "   13" } " #11" } } }
<c e g bflat fsharp'>1-\markup { \raise #0.5 { \magnify #1.2 { \normalsize 7 } } \raise #1.0 \tiny " #11" }

% Suspended
<c f g>1-\markup { \raise #0.7 { \normalsize "sus" } }
<c f g bflat>1-\markup { \raise #0.4 { \small "sus" } \raise #0.5 { \normalsize 7 } }
<c f g bflat d'>1-\markup { \raise #0.4 { \small "sus" } \raise #1.0 \small 9 }
<c f g dflat'>1-\markup { \raise #0.4 { \small "sus" } \raise #1.2 { \teeny " " \tiny \flat \tiny "9" } }
<c f g bflat dflat'>1-\markup { \raise #0.4 { \small " sus" } \raise #0.5 { \normalsize 7 } \raise #1.0 \small " b9" }
<c f gflat>1-\markup { \raise #0.4 { \small " sus" } \raise #1.2 { \teeny " " \tiny \flat \small 5 } }
<c f gflat bflat dflat'>1-\markup { \raise #0.4 { \small " sus" } \raise #0.5 { \normalsize 7 } \raise #1.0 \small " b5" \raise #1.0 \small " b9" }
}
flamingChordExceptions = #(append (sequential-music-to-chord-exceptions flamingChordNames #t) ignatzekExceptions)


% Macro to print single slash
rs = {
  \once \override Rest #'stencil = #ly:percent-repeat-item-interface::beat-slash
  \once \override Rest #'thickness = #0.48
  \once \override Rest #'slope = #1.7
  r4
}

% Function to print a specified number of slashes
comp = #(define-music-function (parser location count) ( integer?)
  #{
    \override Rest #'stencil = #ly:percent-repeat-item-interface::beat-slash
    \override Rest #'thickness = #0.48
    \override Rest #'slope = #1.7
    \repeat unfold $count { r4 }
    \revert Rest #'stencil
  #}
)
% Example use of slashes:
%\score {
%  \relative c' {
%    c4 d e f |
%    \rs \rs \rs \rs |
%    \comp #4 |
%  }
%}

startSolo = \relative c' {
    \override Rest #'stencil = #ly:percent-repeat-item-interface::beat-slash
    \override Rest #'thickness = #0.48
    \override Rest #'slope = #1.7
    r4^"Solo"
    \repeat unfold 3 { r4 }
    \revert Rest #'stencil
}

makePercent =
#(define-music-function (parser location note) (ly:music?)
   "Make a percent repeat the same length as NOTE."
   (make-music 'PercentEvent
               'length (ly:music-length note)))
% Usage: \relative c'' { \makePercent s1 }


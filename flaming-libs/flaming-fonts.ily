%%%% NOTE: If a change in the staff-size is needed, include
%%%% this file after it, like:
%%%%
%%%% #(set-global-staff-size 17)
%%%% \include "flaming-fonts.ly"

\version "2.19.11"

#(define-public (add-notation-font fontnode name music-str brace-str factor)
  (begin 
    (add-music-fonts fontnode 
      name music-str brace-str 
      feta-design-size-mapping factor)
    fontnode))

\paper {
  #(define notation-fonts
    (list 
      (list 'beethoven "beethoven" "beethoven")
      (list 'cadence "cadence" "emmentaler")
      (list 'emmentaler "emmentaler" "emmentaler")
      (list 'gonville "gonville" "gonville")
      (list 'gutenberg "gutenberg1939" "gutenberg1939")
      (list 'haydn "haydn" "haydn")
      (list 'improviso "improviso" "improviso")
      (list 'lilyjazz "lilyjazz" "lilyjazz")
      (list 'paganini "paganini" "emmentaler")
      (list 'profondo "profondo" "profondo")
      (list 'ross "ross" "ross")
      (list 'scorlatti "scorlatti" "emmentaler")
      (list 'sebastiano "sebastiano" "sebastiano")
      (list 'lilyboulez "lilyboulez" "haydn")
      (list 'lv-goldenage "lv-goldenage" "lv-goldenage")
    ))
    
  #(begin 
    (for-each
      (lambda (tup)
        (add-notation-font fonts 
          (car tup) ; font identifier
          (cadr tup) ; notation font
          (caddr tup) ; brace font
          (/ staff-height pt 20)))
      notation-fonts))
}


\layout {
  \context {
    \Staff
    \override Stem.details.beamed-lengths = #'(3.8 4 4.2)
    \override Beam #'beam-thickness = #0.57
    \override Beam #'length-fraction = #1.14
    \override Beam.damping = #1.94
    \override Tie #'thickness = #2.2
    \override Slur #'thickness = #2.4
    \override PhrasingSlur #'thickness = #2.6
  }
  \override DynamicText #'font-family = #'sebastiano   % or haydn, gutenberg, Beethoven
  \override NoteHead #'font-family = #'lv-goldenage    % or scorlatti, Paganini, Gonville, Beethoven
  \override Script #'font-family = #'lv-goldenage      % or Beethoven i.e., the articulations
  \override TrillSpanner #'font-family = #'scorlatti   % or Paganini
}  


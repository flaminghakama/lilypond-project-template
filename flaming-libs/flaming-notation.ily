
rehearsalMarks = #(define-music-function (parser location musicA musicB musicC) (ly:music? ly:music? ly:music?) #{

  \key a \minor
  \time 4/4
  \tempo 4=120

  \mark \markup { \box A }
  $musicA

  \mark \markup { \box B }
  $musicB

  \mark \markup { \box C }
  $musicC

#})


    
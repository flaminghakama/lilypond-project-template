
%% Function to print repeat section with two endings
%%   with text headers rather than numbers


voltaSolos = \markup { \text \italic { to Solos } }
voltaHead = \markup { \text \italic { to Head } }
voltaMore = \markup { \text \italic { continue solo } }
voltaAllXButLast = \markup { \text \italic { All X but last } }
voltaLast = \markup { \text \italic { last x } }

%  \set Score.repeatCommands = #'(start-repeat)
%
%      \time 2/2
%      e1 ~ | e2 r2 | r1*2 
%
%      f1 ~ | f2 r2 | r1*2 
%
%      r4 ff-.-- ff-.-- r | r2 r4 ff-.-- | ff-.-- r4 r2 | r1 | 
%
%      r4 gf-.-- gf-.-- r | r1 |
%
%  \set Score.repeatCommands = #(list (list 'volta voltaMore))
%        r1*2
%
%  \set Score.repeatCommands = #(list (list 'volta #f) 'end-repeat (list 'volta voltaLast))
%        r2 r4 f'8 gf-> ~ | gf2. r4 
%
%  \set Score.repeatCommands = #'((volta #f)) 

voltaCustom = #(define-music-function (parser location repMusicCommon repEndingA repMusicA repEndingB repMusicB) (ly:music? markup? ly:music? markup? ly:music?) #{
  \set Score.repeatCommands = #'(start-repeat)
  $repMusicCommon 

  \set Score.repeatCommands = #(list (list 'volta $repEndingA))
  $repMusicA

  \set Score.repeatCommands = #(list (list 'volta #f) 'end-repeat (list 'volta $repEndingB))
  $repMusicB

  \set Score.repeatCommands = #'((volta #f))
#})


structureSong = \relative c { 
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    %\override Score.RehearsalMark #'extra-offset = #'( -3.2 . 0.3 )
    
    \key af \major 
    \numericTimeSignature
    
    \tag SegmentAI { 
        \tempo 4. = 72
        \time 15/8
        s1*15/8*4 

        % m5
        \bar "||"
        \time 12/8
        s1*12/8*4

        % m9
        \bar "||" 
        \time 15/8
        s1*15/8 

        % m10
        \bar "||"
        \time 12/8
        s1*12/8

        % m11
        \bar "||"
        \time 15/8
        s1*15/8

        % m12
        \bar "||"
        \time 12/8
        s1*12/8*4

        \bar "||" 
    }
    \tag SegmentAII { 

        % m16
        \time 9/8
        \tempo Rubato
        s4. s8
        \tempo "Accel."
        s4 s4. 

        % m17
        \mark \markup \box "A2"
        \bar "||" 
        s1*9/8*6

        % m23
        \bar "||" 
        \time 12/8
        s1*12/8*3

        % m26
        \bar "||" 
        \time 15/8
        s1*15/8

        % m27
        \bar "||" 
        \time 12/8
        s1*12/8

        % m28
        \bar "||" 
        \time 15/8
        s1*15/8

        % m29
        \bar "||" 
        \time 9/8
        s1*9/8*2

        % m31
        \bar "||" 
        \time 15/8
        s1*15/8

        % m32
        \bar "||" 
        \time 9/8
        s1*9/8*2

        % m34
        \bar "||" 
        \time 15/8
        s1*15/8

        % m35
        \bar "||" 
        \time 12/8
        s1*12/8

        \bar "||" 
    }
    \tag SegmentAIII { 

        % m36
        \mark \markup { \box "A3" Solo }
        \tag #'Partial { \time 12/8 } 
        s1*12/8*8

        % m44
        \bar "||"
        s1*12/8*4

        % m48
        s1*12/8*3

        % m51
        \bar "||"
        s1*12/8*11

        % m62
        \bar "||"
        s1*12/8*8

        \bar "||" 
    }
    \tag SegmentAIV { 

        % m70
        \mark \markup \box "A4"
        \tag #'Partial { \time 12/8 }
        s1*12/8*8

        % m78
        \bar "||"
        s1*12/8*4

        % m82
        s1*12/8*3

        % m85
        \bar "||"
        s1*12/8*11

        % m96
        \bar "||"
        s1*12/8*8

        \bar "||"
    }
    \tag SegmentBI { 

        % m104
        \mark \markup \box "B1"
        \time 3/4 
        s2.*8

        % m112
        s2.*8

        % m120
        s2.*3

        \bar "||"
    }
    \tag SegmentBII { 

        % m123
        \mark \markup \box "B2"
        \tag #'Partial { \time 3/4 }
        s2.*8

        % m131
        s2.*4

        % m135
        \bar "||"
        \time 9/8 
        s1*9/8

        % m136
        \bar "||"
        \time 12/8 
        s1*12/8*4

        \bar "||"
    }
    \tag SegmentBIII { 

        % m140
        \mark \markup \box "B3"
        \tag #'Partial { \time 12/8 }
        s2.*12/8*2

        % m142
        \bar "||"
        \time 15/8 
        s1*15/8*2

        % m144
        \bar "||"
        \time 12/8 
        s1*12/8*4

        % m148
        \bar "||"
        \time 10/8 
        s1*10/8*2

        % m150
        \bar "||"
        \time 6/8 
        s1*6/8

        % m151
        \bar "||"
        \time 12/8 
        s1*12/8*5

        \bar "||"
    }

    \tag SegmentBSolo { 

        % m156
        \mark \markup { \box "B1" Solo }
        \time 3/4 
        s2.*8

        % m164
        s2.*8

        % m172
        s2.*3
        \bar "||"


        % m175
        \mark \markup { \box "B2" Solo }
        \tag #'Partial { \time 3/4 }
        s2.*12

        % m187
        \bar "||"
        \time 9/8 
        s1*9/8

        % m188
        \bar "||"
        \time 12/8 
        s1*12/8*8


        % m196
        \mark \markup \box "B3 Solo"
        s1*12/8*2

        % m198
        \bar "||"
        \time 15/8 
        s1*15/8*2

        % m200
        \bar "||"
        \time 12/8
        s1*12/8*4

        % m204
        \bar "||"
        \time 10/8 
        s1*10/8*2

        % m206
        \bar "||"
        \time 6/8 
        s1*6/8

        % m207
        \bar "||"
        \time 12/8 
        s1*12/8

        % m208
        \bar "||"
        s1*12/8*8

        \bar "||"
    }


    \tag SegmentBIReprise { 

        % m216
        \mark \markup { \box "B1" Reprise }
        \time 3/4 
        s2.*8

        % m224
        s2.*8

        % m232
        s2.*3

        \bar "||"
    }
    \tag SegmentBIIReprise { 

        % m235
        \mark \markup { \box "B2" Reprise }
        \tag #'Partial { \time 3/4 }
        s2.*8

        % m243
        s2.*4

        % m247
        \bar "||"
        \time 9/8 
        s1*9/8

        % m248
        \bar "||"
        \time 12/8 
        s1*12/8*4

        \bar "||"
    }
    \tag SegmentBIIIReprise { 

        % m252
        \mark \markup { \box "B3" Reprise }
        \tag #'Partial { \time 12/8 }
        s1*12/8*2

        % m254
        \bar "||"
        \time 15/8 
        s1*15/8*2

        % m256
        \bar "||"
        \time 12/8 
        s1*12/8*4

        % m260
        \bar "||"
        \time 10/8 
        s1*10/8*2

        % m262
        \bar "||"
        \time 6/8 
        s1*6/8

        % m263
        \bar "||"
        \time 12/8 
        s1*12/8*5

        \bar "||"
    }
    \tag SegmentCoda { 

        % m268
        \tempo 4. = 72
        \time 15/8
        s1*15/8*7 

        \bar "|." 
    }
}

globalSong = #(define-music-function (parser location mus) (ly:music?) #{ << \structureSong \relative { $mus } >> #})


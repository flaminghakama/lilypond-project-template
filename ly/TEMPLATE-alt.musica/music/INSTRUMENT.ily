INSTRUMENTSong = \relative c { 
    
    \tag SegmentAI { 

        %\time 15/8
        R1*15/8*4 

        % m5
        %\time 12/8
        R1*12/8*4

        % m9
        %\time 15/8
        R1*15/8 

        % m10
        %\time 12/8
        R1*12/8

        % m11
        %\time 15/8
        R1*15/8

        % m12
        %\time 12/8
        R1*12/8*4

    }
    \tag SegmentAII { 

        % m16
        %\time 9/8
        r4. r r 

        % m17
        \mark \markup \box "A2"
        R1*9/8*6

        % m23
        %\time 12/8
        R1*12/8*3

        % m26
        %\time 15/8
        R1*15/8

        % m27
        %\time 12/8
        R1*12/8

        % m28
        %\time 15/8
        R1*15/8

        % m29
        %\time 9/8
        R1*9/8*2

        % m31
        %\time 15/8
        R1*15/8

        % m32
        %\time 9/8
        R1*9/8*2

        % m34
        %\time 15/8
        R1*15/8

        % m35
        %\time 12/8
        R1*12/8

    }
    \tag SegmentAIII { 

        % m36
        \mark \markup { \box "A3" Solo }
        \tag #'Partial { \time 12/8 } 
        R1*12/8*8

        % m44
        R1*12/8*4

        % m48
        R1*12/8*3

        % m51
        R1*12/8*11

        % m62
        R1*12/8*8

    }
    \tag SegmentAIV { 

        % m70
        \mark \markup \box "A4"
        \tag #'Partial { \time 12/8 }
        R1*12/8*8

        % m78
        R1*12/8*4

        % m82
        R1*12/8*3

        % m85
        R1*12/8*11

        % m96
        R1*12/8*8

    }
    \tag SegmentBI { 

        % m104
        \mark \markup \box "B1"
        %\time 3/4 
        R2.*8

        % m112
        R2.*8

        % m120
        R2.*3

    }
    \tag SegmentBII { 

        % m123
        \mark \markup \box "B2"
        \tag #'Partial { \time 3/4 }
        R2.*8

        % m131
        R2.*4

        % m135
        %\time 9/8 
        R1*9/8

        % m136
        %\time 12/8 
        R1*12/8*4

    }
    \tag SegmentBIII { 

        % m140
        \mark \markup \box "B3"
        \tag #'Partial { \time 12/8 }
        R2.*12/8*2

        % m142
        %\time 15/8 
        R1*15/8*2

        % m144
        %\time 12/8 
        R1*12/8*4

        % m148
        %\time 10/8 
        R1*10/8*2

        % m150
        %\time 6/8 
        R1*6/8

        % m151
        %\time 12/8 
        R1*12/8*5

    }

    \tag SegmentBSolo { 

        % m156
        \mark \markup { \box "B1" Solo }
        %\time 3/4 
        R2.*8

        % m164
        R2.*8

        % m172
        R2.*3


        % m175
        \mark \markup { \box "B2" Solo }
        \tag #'Partial { \time 3/4 }
        R2.*12

        % m187
        %\time 9/8 
        R1*9/8

        % m188
        %\time 12/8 
        R1*12/8*8


        % m196
        \mark \markup \box "B3 Solo"
        R2.*12/8*2

        % m198
        %\time 15/8 
        R1*15/8*2

        % m200
        %\time 12/8
        R1*12/8*4

        % m204
        %\time 10/8 
        R1*10/8*2

        % m206
        %\time 6/8 
        R1*6/8

        % m207
        %\time 12/8 
        R1*12/8

        % m208
        R1*12/8*8

    }


    \tag SegmentBIReprise { 

        % m216
        \mark \markup { \box "B1" Reprise }
        %\time 3/4 
        R2.*8

        % m224
        R2.*8

        % m232
        R2.*3

    }
    \tag SegmentBIIReprise { 

        % m235
        \mark \markup { \box "B2" Reprise }
        \tag #'Partial { \time 3/4 }
        R2.*8

        % m243
        R2.*4

        % m247
        %\time 9/8 
        R1*9/8

        % m248
        %\time 12/8 
        R1*12/8*4

    }
    \tag SegmentBIIIReprise { 

        % m252
        \mark \markup { \box "B3" Reprise }
        \tag #'Partial { \time 12/8 }
        R1*12/8*2

        % m254
        %\time 15/8 
        R1*15/8*2

        % m256
        %\time 12/8 
        R1*12/8*4

        % m260
        %\time 10/8 
        R1*10/8*2

        % m262
        %\time 6/8 
        R1*6/8

        % m263
        %\time 12/8 
        R1*12/8*5

    }
    \tag SegmentCoda { 

        % m268
        %\time 15/8
        R1*15/8*7 

    }
}

INSTRUMENTGlobal = \globalSong \INSTRUMENTSong

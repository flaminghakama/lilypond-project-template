
INSTRUMNETHead = \relative c'' { 
    \tag SegmentOne {
        % A1
        g2\mf af4. df,8 -\tweak minimum-length #3 ~ | 4.\< f8 g bf ( c ) \tieUp cs\f -\tweak minimum-length #3 ~ | 1\> -\tweak minimum-length #3 ~ | 2 \tieNeutral r8\xmf b4--\mf r8 | 
        b4-- a8 b ( fs4-- ) a8 ( e -\tweak minimum-length #3 ~ | 1 ) | r8 c'4.\< -\tweak minimum-length #3 ~ ( 8 bf \tuplet 3/2 { g8 f df\xf } | c2..\> ) r8\xmp ||
        % A2
        g'2\mf af4. df,8 -\tweak minimum-length #3 ~ | 4.\< f8 g bf ( c ) \tieUp cs\f -\tweak minimum-length #3 ~ | 1\> -\tweak minimum-length #3 ~ | 2 \tieNeutral r8\xmf b4.--\mf -\tweak minimum-length #3 ~ | 
        4 a8 b ( fs4-- ) a8 ( c -\tweak minimum-length #3 ~ | 4 ) bf8 c g bf ( c ) ef | \backbeatHit  ||
        % B3
        af,8\mp bf af bf -\tweak minimum-length #3 ~ 2 -\tweak minimum-length #3 ~ | 2.. af8-. | r bf r af bf2 -\tweak minimum-length #3 ~ | 1 | 
        af8\cresc bf af bf -\tweak minimum-length #3 ~ 2 | a8 b a b -\tweak minimum-length #3 ~ 2 | r8 bf8 r c r bf r c\xff | r ef\ff ( c ) [ ef ] -\tweak minimum-length #3 ~ 2 ||
        % A4
        g,2\f af4. df,8 -\tweak minimum-length #3 ~ | 4.\< f8 g bf ( c ) \tieUp cs\ff -\tweak minimum-length #3 ~ | 1\> -\tweak minimum-length #3 ~ | 2 \tieNeutral r8\xmf b4--\mf r8 | 
        b4-- a8 b ( fs4-- ) a8 ( e\> -\tweak minimum-length #3 ~ | 2.. ) cs'8\mp -\tweak minimum-length #3 ~ | 4 b8 cs ( gs4-- ) b8 ( fs\> -\tweak minimum-length #3 ~ | 2.. ) b8--\p -\tweak minimum-length #3 ~ |
        b4 a8 b ( fs4-- ) a8\< ( c -\tweak minimum-length #3 ~ | 4 ) bf8\mf c g af ( bf ) af |
    }
}

INSTRUMNETBgI = \relative c'' { 
    \tag SegmentTwo {
        % A5
        r2 g8\p af4-. df,8-> | R1 | R1 | r2 b'8 cs4-. b8-> |
        R1 | R1 | r2 r8 bf8 \tuplet 3/2 { g8 ( f df ) } | \tuplet 3/2 { g8\< ( f df ) } \tuplet 3/2 { g8 ( f df ) } df'8--\mf c4.\> |||

        % A6
        g4-.\mp r4 r2 | r2 g8\< bf ( c ) cs->\mf | R1 | r2 gs8\p\< b ( cs ) d->\mp |  
        \pageBreakLead
        R1 | r2 g,8\< bf ( c ) ef->\mf | \backbeatHit ||
    
       % B7
        af,8--\pp bf-. r4 r2 | R1 | af8-- bf-. r4 r2 | R1 |
        af8--\mp bf-. r4 r2 | a8-- b-. r4 r2 | r8 bf8-. r c-. r2 | r8 ef8\mf r ef-- ~ 4 r4 ||

        % A6
        r2 g,8\p af4-. df,8-> | R1 | r2 gs8 a4-. d,8-> | R1 | 
        r2 b'4-.\mp a8 fs'-- ~ | 4 a,8 e ~ 2 | r2 cs'4-. b8 gs'-- ~ | 4 b,8 fs ~ 2 |  
        r2 b4-.\mp a8 c--\> ~ | 4 bf4-. g8\pp af ( bf ) af | \backbeatHit || 
    }
}

INSTRUMNETBgII = \relative c'' { 
    \tag SegmentThree {
        % A9
        R1 | r8 f\mf \tuplet 3/2 { af8\< ( f af ) } \tuplet 3/2 { bf8 ( g bf ) } c8\xf ( b-> ~ | 4 ) r4 r2 | R1 | 
        R1 | r2 r4 r8 af,8->\mp ~ | 8 bf c bf->\< c df ef c->\mf | df\< ef g\xf ( f-> ~ 4 ) r4 ||

        % A10
        R1*2 | r8 gs,4.\mf 8-- 4-. 8-- | 4-. 8-- fs8 ~ 4 a4->\f ~ | 
        4 r4 r2 | R1 | r4 af,8\p 8 bf8\< 8 c8 8 | df8 8 ef8 8\xmf f8\mf 8\> g4-.  ||

        % B11
        af8\p bf af bf -\tweak minimum-length #3 ~ 2 -\tweak minimum-length #3 ~ | 2 r2 | af8 bf af bf -\tweak minimum-length #3 ~ 2 -\tweak minimum-length #3 ~ | 2 r2 | 
        af8 bf af bf -\tweak minimum-length #3 ~ 4 r4 | a8 b a b -\tweak minimum-length #3 ~ 4 r4 | r8 bf4-. r8 ef4-- df8 bf ~ | 1 ||
        \pageBreakLead

        % A12
        R1*2 | r8 a4-.\mp r8 b4.-- r8 | a4-. r8 b8 ~ 4 r4 | 
        r8 a8\>\mf ( b4-- ) r8\xmp a8\>\xmf ( b4-- ) | r8\xmp a2..->\fp\< | 
            r8\xf b8\>\xmf ( cs4-- ) r8\xmp b8\>\xmf ( cs4-- ) | r8\xmp b2..->\fp\< | 
        r8\xf a8\mp r b r a r bf\< | r c r df r c\mf r4 | r4 <e cs gs fs>2.\f ~ | 1*7/8\> s8\xmf || 
    }
}


INSTRUMNETOutAThirteen = \relative c'' { 
    % A13
    g8 af g4-. bf4-- af8 df,-- -\tweak minimum-length #3 ~ | 8 ef f af g bf c cs-- -\tweak minimum-length #3 ~ |
        8 gs' \tuplet 3/2 { fs8 ( d b ) } \tuplet 3/2 { cs8 ( d cs } \tuplet 3/2 { b8 ) a gs } | 
        fs8 gs ( a ) cs b d gs, ( b -\tweak minimum-length #3 ~ | 
    4 ) fs4-. a-- g8 ( e -\tweak minimum-length #3 ~ | 2 ) 
}
INSTRUMNETOutAFourteen = \relative c'' { 
        r8 c8-> r c-> |
        r8 f \tuplet 3/2 { df8 ( c af ) } \tuplet 3/2 { bf8 ( c bf } \tuplet 3/2 { af8 f df } |
        c4. f16 fs g8 ) g4. -\tweak minimum-length #3 ~ ||

    % A14
    2 af8 c, g'16 af8 df,16 -\tweak minimum-length #3 ~ | 4 bf8 f' g bf ( c ) \tieUp cs -\tweak minimum-length #3 ~ | 1 -\tweak minimum-length #3 ~ | 2 \tieNeutral r8 d8 e [ g,-> ] |
    r8 b4-- ( a16 b ) fs8 e ( a ) c-> | r8 c4-- bf16 c g8 bf ( c ) ef | \backbeatHit ||
}
INSTRUMNETOutBridge = \relative c''' { 
    % B15
    af,8\mp bf af bf -\tweak minimum-length #3 ~ 2 -\tweak minimum-length #3 ~ | 
    1 | 
    af8 bf af bf -\tweak minimum-length #3 ~ 2 -\tweak minimum-length #3 ~ | 
    1 |


    af8\cresc bf af \tieUp bf -\tweak minimum-length #3 ~ 2 \tieNeutral | 
    a8 b a b -\tweak minimum-length #3 ~ 4. bf8 -\tweak minimum-length #3 ~ | 
    4 c8 ef df ef f af\xff | 
    g\ff bf g bf -\tweak minimum-length #3 ~ 2 ||
}
INSTRUMNETOutASixteen = \relative c''' { 
    \pageBreakLead
    % A16
    \override TextSpanner.bound-details.left.text = \markup { \small "In Octaves  " }
    \override TextSpanner.bound-details.right.text = \markup { \draw-line #'( 0 . -1.2 ) } 
    g,2\f\startTextSpan af4. df,8 -\tweak minimum-length #3 ~ | 4.\< f8 g bf ( c\xff ) \tieUp cs\ff -\tweak minimum-length #3 ~ | 1:16\> -\tweak minimum-length #3 ~ | 2\xmf\stopTextSpan \tieNeutral d8\mf a4 b8 -\tweak minimum-length #3 ~ |
    4 a8 b ( fs4-- ) a8 ( e -\tweak minimum-length #3 ~ | 2 ) fs8\< a ( b ) cs\f -\tweak minimum-length #3 ~ | 4 b8 cs ( gs4-- ) b8\> ( fs -\tweak minimum-length #3 ~ | 2 ) r8\xmp cs'\mp ( c [ b ] -\tweak minimum-length #3 ~ |
    4 ) a8 b ( fs4-- ) a8 ( c -\tweak minimum-length #3 ~ | 4\! ) bf8 g\> -\tweak minimum-length #3 ~ 8 af ( bf ) b\p -\tweak minimum-length #3 ~ | 4 4-. r2 | r2 
}
INSTRUMNETOut = \relative c''' { 
    \tag SegmentFour {
        \INSTRUMNETOutAThirteen
        \INSTRUMNETOutAFourteen
        \INSTRUMNETOutBridge
        \INSTRUMNETOutASixteen
    }
}

INSTRUMNETCoda = \relative c''' { 
    \tag SegmentFour {
        fs4\pp\glissando a,8 ( b8-> -\tweak minimum-length #3 ~ 
        \tag #'Rhythm { 
            \bar "||" 
        }
        % Coda
        b4. ) a8 fs8-- 4-. c'8-> -\tweak minimum-length #3 ~ | 4. bf8 g8-- g4-- r8 | 

        r4 b,4-.\p cs8 d ( e ) d | fs4-- d8 ( e -\tweak minimum-length #3 ~ 2 ) |

        <>\mf \comp #1 \comp #3 | \comp #4 | \comp #4 | \comp #4 | 

        b4--\mp\startTextSpan 8\< a-- -\tweak minimum-length #3 ~ 8 8 8 8 | af4. g8 -\tweak minimum-length #3 ~ 4 4-.\mf\stopTextSpan | R1 | r2 r4 r8 b'8->\p -\tweak minimum-length #3 ~ | 
        4 a8\p b ( fs4-- ) a8 ( c?->\> -\tweak minimum-length #3 ~ | 4 ) bf8 c g\pp af ( bf ) af | r2 \tupletUp \tuplet 3/2 { r4 r4 df4\mp\< } | \tuplet 3/2 { r4 df4 r4 } <d cf bf g ef c? g e af,>2\f^\fermat | 
    }
}

INSTRUMENTSong = { 
    \INSTRUMENTHead 
    \INSTRUMENTBgI
    \INSTRUMENTBgII
    \INSTRUMENTOut
    \INSTRUMENTCoda
}

INSTRUMENTGlobal = \globalSong \INSTRUMENTSong

\addQuote "INSTRUMENT" { \INSTRUMENTSong }

\book {
    \score {
        \keepWithTag #'(Score MIDI
            SegmentOne
            SegmentTwo
            SegmentThree
            SegmentFour        
        ) <<
            \include "ly/SONG/staves/sound/altoSaxophoneI.ily"
            \include "ly/SONG/staves/sound/altoSaxophoneII.ily"
            \include "ly/SONG/staves/sound/tenorSaxophoneI.ily"
            \include "ly/SONG/staves/sound/tenorSaxophoneII.ily"
            \include "ly/SONG/staves/sound/baritoneSaxophone.ily"

            \include "ly/SONG/staves/sound/trumpetI.ily"
            \include "ly/SONG/staves/sound/trumpetII.ily"
            \include "ly/SONG/staves/sound/trumpetIII.ily"
            \include "ly/SONG/staves/sound/trumpetIV.ily"

            \include "ly/SONG/staves/sound/tromboneI.ily"
            \include "ly/SONG/staves/sound/tromboneII.ily"
            \include "ly/SONG/staves/sound/tromboneIII.ily"
            \include "ly/SONG/staves/sound/tromboneIV.ily"

            \include "ly/SONG/staves/sound/piano.ily"
            \include "ly/SONG/staves/sound/rhythm.ily"
        >>
        \midi { }
    }
}

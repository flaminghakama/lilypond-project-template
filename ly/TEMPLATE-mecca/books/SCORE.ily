\book {
    \paper {

        top-margin = #10
        right-margin = #17

        % First page spacing after header
        markup-system-spacing #'padding = #6

        % Subsequent page spacing after header
        top-system-spacing #'minimum-distance = #18

        % Spacing in between systems
        system-system-spacing #'minimum-distance = #12
    }
    \header {
        subtitle = ""
        poet = "POET"
        instrumentName = \poet
    }

    \include "ly/overature/structures/header.ily"
    \include "ly/overature/music/bass.ily"
    \include "ly/overature/music/clarinet.ily"
    \include "ly/overature/music/tenorSaxophone.ily"
    \include "ly/overature/music/trumpet.ily"
    \include "ly/overature/music/voice.ily"
    \include "ly/overature/music/piano.ily"
    \include "ly/overature/music/cello.ily"
    \include "ly/overature/music/bass.ily"
    \score {
        \keepWithTag #'(PDF Score) <<
            \include "ly/overature/staffgroups/transposed/Winds.ily"
            \include "ly/overature/staffgroups/transposed/Voices.ily"
            \include "ly/overature/staffgroups/transposed/Percussion.ily"
            \include "ly/overature/staffgroups/transposed/Strings.ily"
        >>
        \layout {
            indent = 1.25\cm
            short-indent = .25\cm
        }
    }

    \include "ly/ellis/structures/header.ily"
    \include "ly/ellis/music/bass.ily"
    \include "ly/ellis/music/clarinet.ily"
    \include "ly/ellis/music/tenorSaxophone.ily"
    \include "ly/ellis/music/trumpet.ily"
    \include "ly/ellis/music/voice.ily"
    \include "ly/ellis/music/piano.ily"
    \include "ly/ellis/music/cello.ily"
    \include "ly/ellis/music/bass.ily"
    \score {
        \keepWithTag #'(PDF Score) <<
            \include "ly/ellis/staffgroups/transposed/Winds.ily"
            \include "ly/ellis/staffgroups/transposed/Voices.ily"
            \include "ly/ellis/staffgroups/transposed/Percussion.ily"
            \include "ly/ellis/staffgroups/transposed/Strings.ily"
        >>
        \layout {
            indent = 1.25\cm
            short-indent = .25\cm
        }
    }

    \include "ly/always/structures/header.ily"
    \include "ly/always/music/bass.ily"
    \include "ly/always/music/clarinet.ily"
    \include "ly/always/music/tenorSaxophone.ily"
    \include "ly/always/music/trumpet.ily"
    \include "ly/always/music/voice.ily"
    \include "ly/always/music/piano.ily"
    \include "ly/always/music/cello.ily"
    \include "ly/always/music/bass.ily"
    \score {
        \keepWithTag #'(PDF Score) <<
            \include "ly/always/staffgroups/transposed/Winds.ily"
            \include "ly/always/staffgroups/transposed/Voices.ily"
            \include "ly/always/staffgroups/transposed/Percussion.ily"
            \include "ly/always/staffgroups/transposed/Strings.ily"
        >>
        \layout {
            indent = 1.25\cm
            short-indent = .25\cm
        }
    }

    \include "ly/roof/structures/header.ily"
    \include "ly/roof/music/bass.ily"
    \include "ly/roof/music/clarinet.ily"
    \include "ly/roof/music/tenorSaxophone.ily"
    \include "ly/roof/music/trumpet.ily"
    \include "ly/roof/music/voice.ily"
    \include "ly/roof/music/piano.ily"
    \include "ly/roof/music/cello.ily"
    \include "ly/roof/music/bass.ily"
    \score {
        \keepWithTag #'(PDF Score) <<
            \include "ly/roof/staffgroups/transposed/Winds.ily"
            \include "ly/roof/staffgroups/transposed/Voices.ily"
            \include "ly/roof/staffgroups/transposed/Percussion.ily"
            \include "ly/roof/staffgroups/transposed/Strings.ily"
        >>
        \layout {
            indent = 1.25\cm
            short-indent = .25\cm
        }
    }

    \include "ly/evicted/structures/header.ily"
    \include "ly/evicted/music/bass.ily"
    \include "ly/evicted/music/clarinet.ily"
    \include "ly/evicted/music/tenorSaxophone.ily"
    \include "ly/evicted/music/trumpet.ily"
    \include "ly/evicted/music/voice.ily"
    \include "ly/evicted/music/piano.ily"
    \include "ly/evicted/music/cello.ily"
    \include "ly/evicted/music/bass.ily"
    \score {
        \keepWithTag #'(PDF Score) <<
            \include "ly/evicted/staffgroups/transposed/Winds.ily"
            \include "ly/evicted/staffgroups/transposed/Voices.ily"
            \include "ly/evicted/staffgroups/transposed/Percussion.ily"
            \include "ly/evicted/staffgroups/transposed/Strings.ily"
        >>
        \layout {
            indent = 1.25\cm
            short-indent = .25\cm
        }
    }

    \include "ly/speculation/structures/header.ily"
    \include "ly/speculation/music/bass.ily"
    \include "ly/speculation/music/clarinet.ily"
    \include "ly/speculation/music/tenorSaxophone.ily"
    \include "ly/speculation/music/trumpet.ily"
    \include "ly/speculation/music/voice.ily"
    \include "ly/speculation/music/piano.ily"
    \include "ly/speculation/music/cello.ily"
    \include "ly/speculation/music/bass.ily"
    \score {
        \keepWithTag #'(PDF Score) <<
            \include "ly/speculation/staffgroups/transposed/Winds.ily"
            \include "ly/speculation/staffgroups/transposed/Voices.ily"
            \include "ly/speculation/staffgroups/transposed/Percussion.ily"
            \include "ly/speculation/staffgroups/transposed/Strings.ily"
        >>
        \layout {
            indent = 1.25\cm
            short-indent = .25\cm
        }
    }

    \include "ly/city/structures/header.ily"
    \include "ly/city/music/bass.ily"
    \include "ly/city/music/clarinet.ily"
    \include "ly/city/music/tenorSaxophone.ily"
    \include "ly/city/music/trumpet.ily"
    \include "ly/city/music/voice.ily"
    \include "ly/city/music/piano.ily"
    \include "ly/city/music/cello.ily"
    \include "ly/city/music/bass.ily"
    \score {
        \keepWithTag #'(PDF Score) <<
            \include "ly/city/staffgroups/transposed/Winds.ily"
            \include "ly/city/staffgroups/transposed/Voices.ily"
            \include "ly/city/staffgroups/transposed/Percussion.ily"
            \include "ly/city/staffgroups/transposed/Strings.ily"
        >>
        \layout {
            indent = 1.25\cm
            short-indent = .25\cm
        }
    }

    \include "ly/tired/structures/header.ily"
    \include "ly/tired/music/bass.ily"
    \include "ly/tired/music/clarinet.ily"
    \include "ly/tired/music/tenorSaxophone.ily"
    \include "ly/tired/music/trumpet.ily"
    \include "ly/tired/music/voice.ily"
    \include "ly/tired/music/piano.ily"
    \include "ly/tired/music/cello.ily"
    \include "ly/tired/music/bass.ily"
    \score {
        \keepWithTag #'(PDF Score) <<
            \include "ly/tired/staffgroups/transposed/Winds.ily"
            \include "ly/tired/staffgroups/transposed/Voices.ily"
            \include "ly/tired/staffgroups/transposed/Percussion.ily"
            \include "ly/tired/staffgroups/transposed/Strings.ily"
        >>
        \layout {
            indent = 1.25\cm
            short-indent = .25\cm
        }
    }

    \include "ly/america/structures/header.ily"
    \include "ly/america/music/bass.ily"
    \include "ly/america/music/clarinet.ily"
    \include "ly/america/music/tenorSaxophone.ily"
    \include "ly/america/music/trumpet.ily"
    \include "ly/america/music/voice.ily"
    \include "ly/america/music/piano.ily"
    \include "ly/america/music/cello.ily"
    \include "ly/america/music/bass.ily"
    \score {
        \keepWithTag #'(PDF Score) <<
            \include "ly/america/staffgroups/transposed/Winds.ily"
            \include "ly/america/staffgroups/transposed/Voices.ily"
            \include "ly/america/staffgroups/transposed/Percussion.ily"
            \include "ly/america/staffgroups/transposed/Strings.ily"
        >>
        \layout {
            indent = 1.25\cm
            short-indent = .25\cm
        }
    }
}
\book {
    \paper {

        top-margin = #10
        right-margin = #17

        % First page spacing after header
        markup-system-spacing #'padding = #6

        % Subsequent page spacing after header
        top-system-spacing #'minimum-distance = #18

        % Spacing in between systems
        system-system-spacing #'minimum-distance = #12
    }
    \header {
        subtitle = ""
        poet = "POET"
        instrumentName = \poet
    }

    \include "ly/overature/structures/header.ily"
    \include "ly/overature/music/bass.ily"
    \include "ly/overature/music/clarinet.ily"
    \include "ly/overature/music/tenorSaxophone.ily"
    \include "ly/overature/music/trumpet.ily"
    \include "ly/overature/music/voice.ily"
    \include "ly/overature/music/piano.ily"
    \include "ly/overature/music/cello.ily"
    \include "ly/overature/music/bass.ily"
    \score {
        \keepWithTag #'(PDF Score) <<
            \include "ly/transposed/staffgroups/Winds.ily"
            \include "ly/transposed/staffgroups/Voices.ily"
            \include "ly/transposed/staffgroups/Percussion.ily"
            \include "ly/transposed/staffgroups/Strings.ily"
        >>
        \layout {
            indent = 1.25\cm
            short-indent = .25\cm
        }
    }

    \include "ly/header/structures-ellis.ily"
    \include "ly/ellis/music/bass.ily"
    \include "ly/ellis/music/clarinet.ily"
    \include "ly/ellis/music/tenorSaxophone.ily"
    \include "ly/ellis/music/trumpet.ily"
    \include "ly/ellis/music/voice.ily"
    \include "ly/ellis/music/piano.ily"
    \include "ly/ellis/music/cello.ily"
    \include "ly/ellis/music/bass.ily"
    \score {
        \keepWithTag #'(PDF Score) <<
            \include "ly/transposed/staffgroups/Winds.ily"
            \include "ly/transposed/staffgroups/Voices.ily"
            \include "ly/transposed/staffgroups/Percussion.ily"
            \include "ly/transposed/staffgroups/Strings.ily"
        >>
        \layout {
            indent = 1.25\cm
            short-indent = .25\cm
        }
    }

    \include "ly/header/structures-always.ily"
    \include "ly/always/music/bass.ily"
    \include "ly/always/music/clarinet.ily"
    \include "ly/always/music/tenorSaxophone.ily"
    \include "ly/always/music/trumpet.ily"
    \include "ly/always/music/voice.ily"
    \include "ly/always/music/piano.ily"
    \include "ly/always/music/cello.ily"
    \include "ly/always/music/bass.ily"
    \score {
        \keepWithTag #'(PDF Score) <<
            \include "ly/transposed/staffgroups/Winds.ily"
            \include "ly/transposed/staffgroups/Voices.ily"
            \include "ly/transposed/staffgroups/Percussion.ily"
            \include "ly/transposed/staffgroups/Strings.ily"
        >>
        \layout {
            indent = 1.25\cm
            short-indent = .25\cm
        }
    }

    \include "ly/header/structures-roof.ily"
    \include "ly/roof/music/bass.ily"
    \include "ly/roof/music/clarinet.ily"
    \include "ly/roof/music/tenorSaxophone.ily"
    \include "ly/roof/music/trumpet.ily"
    \include "ly/roof/music/voice.ily"
    \include "ly/roof/music/piano.ily"
    \include "ly/roof/music/cello.ily"
    \include "ly/roof/music/bass.ily"
    \score {
        \keepWithTag #'(PDF Score) <<
            \include "ly/transposed/staffgroups/Winds.ily"
            \include "ly/transposed/staffgroups/Voices.ily"
            \include "ly/transposed/staffgroups/Percussion.ily"
            \include "ly/transposed/staffgroups/Strings.ily"
        >>
        \layout {
            indent = 1.25\cm
            short-indent = .25\cm
        }
    }

    \include "ly/header/structures-evicted.ily"
    \include "ly/evicted/music/bass.ily"
    \include "ly/evicted/music/clarinet.ily"
    \include "ly/evicted/music/tenorSaxophone.ily"
    \include "ly/evicted/music/trumpet.ily"
    \include "ly/evicted/music/voice.ily"
    \include "ly/evicted/music/piano.ily"
    \include "ly/evicted/music/cello.ily"
    \include "ly/evicted/music/bass.ily"
    \score {
        \keepWithTag #'(PDF Score) <<
            \include "ly/transposed/staffgroups/Winds.ily"
            \include "ly/transposed/staffgroups/Voices.ily"
            \include "ly/transposed/staffgroups/Percussion.ily"
            \include "ly/transposed/staffgroups/Strings.ily"
        >>
        \layout {
            indent = 1.25\cm
            short-indent = .25\cm
        }
    }

    \include "ly/header/structures-speculation.ily"
    \include "ly/speculation/music/bass.ily"
    \include "ly/speculation/music/clarinet.ily"
    \include "ly/speculation/music/tenorSaxophone.ily"
    \include "ly/speculation/music/trumpet.ily"
    \include "ly/speculation/music/voice.ily"
    \include "ly/speculation/music/piano.ily"
    \include "ly/speculation/music/cello.ily"
    \include "ly/speculation/music/bass.ily"
    \score {
        \keepWithTag #'(PDF Score) <<
            \include "ly/transposed/staffgroups/Winds.ily"
            \include "ly/transposed/staffgroups/Voices.ily"
            \include "ly/transposed/staffgroups/Percussion.ily"
            \include "ly/transposed/staffgroups/Strings.ily"
        >>
        \layout {
            indent = 1.25\cm
            short-indent = .25\cm
        }
    }

    \include "ly/header/structures-city.ily"
    \include "ly/city/music/bass.ily"
    \include "ly/city/music/clarinet.ily"
    \include "ly/city/music/tenorSaxophone.ily"
    \include "ly/city/music/trumpet.ily"
    \include "ly/city/music/voice.ily"
    \include "ly/city/music/piano.ily"
    \include "ly/city/music/cello.ily"
    \include "ly/city/music/bass.ily"
    \score {
        \keepWithTag #'(PDF Score) <<
            \include "ly/transposed/staffgroups/Winds.ily"
            \include "ly/transposed/staffgroups/Voices.ily"
            \include "ly/transposed/staffgroups/Percussion.ily"
            \include "ly/transposed/staffgroups/Strings.ily"
        >>
        \layout {
            indent = 1.25\cm
            short-indent = .25\cm
        }
    }

    \include "ly/header/structures-tired.ily"
    \include "ly/tired/music/bass.ily"
    \include "ly/tired/music/clarinet.ily"
    \include "ly/tired/music/tenorSaxophone.ily"
    \include "ly/tired/music/trumpet.ily"
    \include "ly/tired/music/voice.ily"
    \include "ly/tired/music/piano.ily"
    \include "ly/tired/music/cello.ily"
    \include "ly/tired/music/bass.ily"
    \score {
        \keepWithTag #'(PDF Score) <<
            \include "ly/transposed/staffgroups/Winds.ily"
            \include "ly/transposed/staffgroups/Voices.ily"
            \include "ly/transposed/staffgroups/Percussion.ily"
            \include "ly/transposed/staffgroups/Strings.ily"
        >>
        \layout {
            indent = 1.25\cm
            short-indent = .25\cm
        }
    }

    \include "ly/header/structures-america.ily"
    \include "ly/america/music/bass.ily"
    \include "ly/america/music/clarinet.ily"
    \include "ly/america/music/tenorSaxophone.ily"
    \include "ly/america/music/trumpet.ily"
    \include "ly/america/music/voice.ily"
    \include "ly/america/music/piano.ily"
    \include "ly/america/music/cello.ily"
    \include "ly/america/music/bass.ily"
    \score {
        \keepWithTag #'(PDF Score) <<
            \include "ly/transposed/staffgroups/Winds.ily"
            \include "ly/transposed/staffgroups/Voices.ily"
            \include "ly/transposed/staffgroups/Percussion.ily"
            \include "ly/transposed/staffgroups/Strings.ily"
        >>
        \layout {
            indent = 1.25\cm
            short-indent = .25\cm
        }
    }
}

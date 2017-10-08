\book {
    \paper {

        % First page spacing after header
        markup-system-spacing.padding = #9

        % Subsequent page spacing after header
        top-system-spacing.minimum-distance = #20

        % Spacing in between systems
        system-system-spacing.minimum-distance = #21
    }
    \header {
        subtitle = ""
        poet= "POET"
        instrumentName = \poet
    }
    %%%%% we-declare %%%%%
    \score {
        \keepWithTag #'(Part PDF
            SectionX
            SectionA
            SectionB
            SectionC
            SectionD
            SectionE 
        ) <<
            \include "ly/we-declare/staves/parts/INSTRUMENT.ily"
        >>
        \layout {
            indent = 1.25\cm
            short-indent = .25\cm
        }
    }
}

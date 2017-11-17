\paper {
    oddHeaderMarkup = \markup {
        \on-the-fly #print-page-number-check-first
        \fill-line {
            \fromproperty #'header:poet
            \line { 
                \titleLeft
                \titleKern
                \huge "-"
                \pageNumberKern
                \lower #0.55 \fontsize #6 \fromproperty #'page:page-number-string
                \pageNumberKern
                \huge "-"
                \titleKern
                \titleRight
            }
            \composerName
        }
    }
    evenHeaderMarkup = \oddHeaderMarkup
    oddFooterMarkup = \markup { \fill-line { \fromproperty #'header:copyright } }
    evenFooterMarkup = \oddFooterMarkup
}
\version "2.13.0"

dolce = \markup {\italic \bold "dolce"}

#(set-global-staff-size 19.35)
\paper {
  fonts = #
  (make-pango-font-tree
   "Wyld"
   "Wyld"
   "Wyld"
   (/ (* staff-height pt) 2.5))
}

\header {
  title 	       = \markup {"Chaconne en Trio"}

  subtitle       = \markup {""}

  composer       = \markup {"par Mr MOREL"}


  poet =  \markup {
    \left-align
    \with-dimensions #'(0 . 0) #'(0 . 0) {
      \translate #'(0 . 0)
      \epsfile #Y #7 #"../xma.eps"
    }

  }

  texttranslator = \markup {""}

  dedication     = \markup {""}

  copyright      = \markup {"(C) 2016 Les Editions du Héron Mélomane"}

}


\score {
\include "MorelChaconneFlute.ily"
}


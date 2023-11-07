\version "2.24.0"
\include "collisions-partly-avoided.ly"

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



\new StaffGroup {
  <<
    \include "MorelChaconneFlute.ily"
    \include "MorelChaconneVG.ily"
    \include "MorelChaconneBC.ily"
  >>

}

%{
convert-ly (GNU LilyPond) 2.24.1  convert-ly: Processing `'...
Applying conversion: 2.19.2, 2.19.7, 2.19.11, 2.19.16, 2.19.22,
2.19.24, 2.19.28, 2.19.29, 2.19.32, 2.19.39, 2.19.40, 2.19.46,
2.19.49, 2.20.0, 2.21.0, 2.21.2, 2.22.0, 2.23.1, 2.23.2, 2.23.3,
2.23.4, 2.23.5, 2.23.6, 2.23.7, 2.23.8, 2.23.9, 2.23.10, 2.23.11,
2.23.12, 2.23.13, 2.23.14, 2.24.0
%}

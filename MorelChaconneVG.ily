\version "2.18.2"

\new Staff {

  \relative c' {

    \set Staff.instrumentName = #"BaËe de Violle"
    %\set Staff.midiInstrument = #"Flute"
    \clef "mensural-c3"
    \key g \major
    \time 3/4
    \override Rest.style =#'neomensural
    r2.r2. r2. r2. |r4 g8. _\markup "p"   [a16 b8. c16]|
    a4 \pinceR  d8. _\markup "p" [c16 b8. a16] g4 g'  _\markup "t" g  _\markup "t"|g fis4. _\markup "t" (\pinceR g8)|
    <g b, g>2 g4~  _\markup "t"|
    g fis8. _\markup "p"(e16) fis4~  _\markup "t" |
    fis e8. _\markup "p" (d16) e4  _\markup "t"|
    a,8. [g16 a8. b16 c8. a16]|
    b4 b'8.  _\markup "t"   (a16 b4)|
    a8. _\markup "p" ([\pinceR g16] a4) d4|
    g,8. (fis16 g4) c|
    fis,8. (g16) fis4. (g8)|
    <g b, g>4 g2~| g4 fis2~| fis4 e2~| e4 dis4. \pinceR e8|
    <e b e,>4 e(g)| cis, d8.(e16 fis4)|
    b,4 cis8.(d16) e4~(|
    e8. d16) cis4. (\pinceR d8)|
    <d a fis d>4 d(c)|
    b8.[c16 b8.a16 b8. g16]|
    c4. b8 c a|
    d4.  c8 d b|
    e4. d8 e c|
    d[e fis g a fis]|
    g[( a g a) g (a16 b)]|
    fis8. (g16)
    << {fis4. _(\pinceR g8)} \\ {d2} >>
    <g b, g>4 g2| r4 fis2| r4 e2|r4 a,4. \pinceR g8|
    g4 b'2| r4 a2| r4 g2| r4 fis4.\pinceR g8|
    %page 2 original
    << {\stemDown <b, g>4} \\ {\stemUp g'8 g16(fis)} >> \stemUp g8[g, b g]|
    d d'16 (c) d8 fis, d' d,|
    e8 c'16(b) c8 e,c'c,|
    d2 d4|
    \stemNeutral g8 g'16(fis) g8 g,b g|
    d8 d'16(c) d8 fis,d' d,|
    e8 c'16(b) c8 e, c' c,|
    d2 d4|
    g16 g' fis e d c b a b d c b|
    a b a g fis  g fis e d a' g fis|
    g e' d c b a g fis e g fis e|
    fis d' c b a g fis e \clef bass d c d d, g \clef "mensural-c3" g'' fis e d c b a b d c b |
    a b a g fis g fis e d a' g fis |
    g e' d c b a g fis e g fis e|
    fis d' c b a g fis e \clef bass d c d d, |
    g4
    \bar "||" \clef "mensural-c3" \key f \major
    g''4.  _\markup "t" ^\markup "B mol." g8  _\markup "t" |
    g4 fis8.  _\markup "t" ([e16 fis8. e16])|
    g2 g4|
    g4 fis4. (\pinceR g8)|
    g4 bes,8.  _\markup "t"([a16 bes8. c16])|
    a4\pinceR d4.  _\markup "t" d8  _\markup "t"|
    d4 (c8. d16) ees4|a,8. bes16 a4.\pinceR g8|
    g4 g'8  _\markup "t"(a) bes4~ _\markup "p"| bes aes 4.  _\markup "t"(bes8)|
    g2 g4| g f \trL  _\markup "t" f  _\markup "t" |
    f2\prallprall f4|
    f ees  _\markup "t" ees  _\markup "t"|
    e2\prallprall ees4|
    d8 c d bes c d |
    ees d ees! d c bes |
    a g a bes c a|
    bes4 d  _\markup "t" d  _\markup "t" |
    d2 cis4|
    d bes'8 _\markup "t" (a g bes)|
    e,4 a8  _\markup "t"( g fis a)|
    d,4 g  _\markup "t" g  _\markup "t"|
    g fis4.(\pinceR g8)|
    <g bes, g>4 bes8  _\markup "t" ^\markup {"doux."}  ( a  g bes)|
    e,4 a8(g fis a)|
    d,4 g_\markup "t" g_\markup "t"|
    g4 fis4.(\pinceR g8)|
    <g bes, g>4 r r|
    r d4 ^\markup{"fort."} d |
    d _\markup "t" (c) c_\markup "t" |
    c (bes) a|
    bes g'_\markup "t"  g_\markup "t" |
    g (f) f| f(ees) ees|
    d g( fis) \pinceR | g r r |
    r d d16(ees f8)|
    b,4 (c) c16(d ees8)|
    fis,8.(g16) fis4.(\pinceR g8)|
    g4 g'_\markup "t" g16_\markup "t" (a bes8) |
    fis4\pinceR f_\markup "t"  f_\markup "t" |
    f (ees) ees16 (f g8)|
    a,8.(bes16) a4.(\pinceR g8)|
    g4 g'8(a g a)|
    fis (g fis g) fis (g)|
    fis (g fis g) a4|
    g fis4.(\pinceR g8)|
    g4 bes8 (c bes c)|
    a (bes a bes) a (bes)|
    a (bes a bes) c4|
    %page 42
    bes8.(a16) a4.(\pinceR g8)|
    g(d g a) bes(a)|
    g (f e d) cis (d)|
    a (bes cis d) e (cis)|
    d4 << {cis4. _(\pinceR e8)} \\ {a,2} >> |
    <d a fis d>2 (d8) d|
    e[(d e fis) e (fis16 g)]|
    fis4 (\pinceR d) g |
    g f\trL _\markup "t" f_\markup "t" |
    f2\prallprall ees4|
    d8[(c d ees) d (ees16 f)]|
    e4(\pinceR c) f|
    f2 ees4|
    e2\prallprall d4\pinceR |
    c8 [(bes c d) c (d16 ees)]|
    d8 [(\pinceR c)] bes4 r|
    ees8(d) c2\pinceR |
    d4 d'_"t" d_"t" |
    d(c)c|
    c2\prallL bes4|
    a a4.(\pinceR g8) \bar "||" \key g \major
    g4^\markup "B. carre." g_"t"  g_"t" |
    g16(a g8 fis4) fis|
    fis16(g fis8 e4) e|
    a,8 [g a b c a]|
    b4 b'_"t"  b16(_"t"c b8)|
    a4 a_"t"  a16(_"t" b a8)|
    g4 g_"t"  g_"t" |
    g4 fis4.(\pinceR g8) |
    g2 g4|
    fis r d| e r c| d2 d4| g2 g4|
    fis r d| e r c| d d,2|
    %page 43
    \clef bass
    g16 d' c d b d c d g, d' c d|
    d, d' c d fis, d' c d d, d' c d|
    e, b' a b g b a b c, e' d e|
    d, a' g a fis a g a d, fis e fis |
    g, d'' c d b d c d g, d' c d  |
    d, d' c d fis, d' c d d, d'c d|
    e, b' a b g b a b c, e' d e|
    d, a' g a fis a g a d, fis e fis|
    g,4 \clef "mensural-c3" g'2 |
    fis4 b2| g4 c2| fis,8. (g16) fis4. (\pinceR  g8)|
    <g d g,>4 b2 | a4 d2 |b4 e2|a,8. b16 a4.\pinceR g8|
    <g d g,>4 r r | r g'2| d4 e2|b2\pinceR g4|
    c8 (b a4) g|
    d' (e) fis8[(\pinceR e16 fis)]|
    g8 (fis e d) cis (e)|
    d4 << {cis4. _(d8)} \\ {a2} >>|
    <d a fis d>2.|
    g8(_"p" [f16 e] d8. [e16) f!8.(g16)]|
    e8 [(\pinceR d16 c] b8.[ c16) d8.(b16)]|
    c8 f, \clef "bass" g4 g,|
    c8. [\clef "mensural-c3" c''16 c8. a16 c8. a16]|
    fis8.[b16 b8. g16 b8. g16]|
    e8.[a16 a8. fis16 a8. fis16]|
    d8.b'16 \tuplet 3/2 { a8 (b a)} \tuplet 3/2 { g (a g)}|
    fis4 r r | r d2| a4 b2|
    fis8. g16 d'4 d,|
    g4 b8.(c16 b4)|
    a4 d_"t"  d_"t" |
    %page 44
    g, g' _"t" g_"t" |
    g fis4.(\pinceR g8)|
    <g b, g>4 g_"t"  g_"t" |
    g (fis8.e16) fis4~| fis e8.(d16) e4_"t" |
    a, a4.(\pinceR  g8)|
    g4 \appoggiatura c8 b4 (a8. [ \pinceR g16])|
    a4 r r |
    r b8.[g16 c8. b16]|
    a4\pinceR r r |
    r  \appoggiatura c8 b4 (a8. [ \pinceR g16])|
    a4 r r |
    r b8.[g16 c8. b16]|
    a8.[(\pinceR g16)] fis4.(\pinceR g8)|
    g4 g'4._"t"  g8_"t" |
    g4 fis4.(\pinceR  e8)|
    dis8[ c dis e fis dis]|
    e4 << {dis4._(\pinceR e8)} \\ {b2} >>|
    <e b e,>4 b4._"t"   b8_"t" |
    b4 b4._"t"  b8_"t" |
    e4. e8[f e]|
    d4. d8[e b]|
    c4\trL c4._"t"  c8_"t" |
    \appoggiatura d8 cis4 cis4.(\pinceR \stemDown b16 cis!)|
    d2 d4|
    d cis4. (\pinceR d8)|
    d(a) \grace {a16([b]}  c4. b16 c)|
    b4  \grace { \stemDown b16^(_"t" c } d4.) d8|
    d4. g,8 c4|
    b4 a4.\pinceR  g8|
    g4 r g~|g fis d'~| d c e|
    a,8 [g a b c a]|
    b4 g_"t"  b_"t" |
    a d_"t"  fis,_"t" |
    g2 g4|
    g4 << {fis4._(\pinceR g8)} \\ {d2} >>| \clef bass
    <g d g,>4 r r |
    \clef "mensural-c3" r2.|
    r4 g'_"t"  g|
    g fis8( g a fis)|
    g4 b,8(a b c)|
    a4 d4.(c8)|
    b8(c d b) e4|
    a, a4.(\pinceR  g8)|
    g4 g'8(fis g a)|
    fis (e8 fis g) a(fis)|
    g2 \trL g4|
    g4 fis4.(\pinceR g8)|
    <g b, g d g,>2. \bar "|."

  }

}
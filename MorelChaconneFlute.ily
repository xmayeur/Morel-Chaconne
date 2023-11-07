\version "2.18.2"


\new Staff {
  \relative c'' {


    \set Staff.instrumentName = #"      Traverso"
    \set Staff.midiInstrument = #"Flute"
    \clef "treble"
    \key g \major \override Rest.style =#'neomensural
    \time 3/4

    r4 g8.[ a16 b8. c16] | %1
    a4-+ d8.[ c16 b8.-+ a16] | %2
    g4 g' g | %3
    g fis4.-+ g8 | %4
    g4 d g | %5
    fis8.[ g16 fis8. e16 d8. c16] | %6
    b2-+ e4 | %7
    a,4 a4.-+ g8 | %8
    g4 b'8. a16 b4 |%9
    a8.-+ g16 a4 d | %10
    g,8. fis16 g4 c4 | %11
    fis,8.[ e16 fis8. g16 a8. fis16] | %12
    g2 g4~ | %13
    g fis8. e16 fis4~ | %14
    fis e8. d16 e4 | %15
    a,8.( b16) a4.-+ g8 | %16
    g4 b'2~ | %17
    b4 a2~ | %18
    a4 g2~ | %19
    g8. fis16 fis4.-+ e8 | %20
    e4 g b | %21
    e, fis8.( g16) a4 | %22
    d,4 e8.( fis16) g4 | %23
    a,8. fis'16 e4.-+ d8 | %24
    d8.[ g16 fis8. e16 fis8. d16] | %25
    g2.~ | g8. e16 a2~ | a8. fis16 b2~ | b8. g16 c2~ | c4. b8 c a | %30
    b8( c) b( c) b( c16 d) | a8. b16 a4.-+ g8 | g4 b2 | r4 a2 | r4 g2 | %35
    r4 fis4.-+ g8 | g4 g2 | r4 fis2 | r4 e2 | r4 a,4.-+ g8| %40
    g8 b'16( a) b8 b g b | a fis16( e) fis8 a fis a | g e16( d) e8 g e g | fis8 d16( c) d8 fis, d' a | b8 b'16( a) b8 b g b | %45
    a fis16( e) fis8 a fis a | g e16( d) e8 g e g | fis d16( c) d8 fis, d' a | b2 g4 | fis a d | %50

    b g c | a fis4.-+ g8 | g2 g4 | fis a d | b g c | %55
    a fis4.-+ g8 | g4

    \bar "||" \key f \major

    bes8.[ a16 bes8. c16] | a4-+ d4. d8 | d4 c8.( d16) ees4 | a,8. bes16 a4.-+ g8 | %60
    g4 g'4. g8 | g4 fis8.( e16) fis8.( d16) | g2 g4 | g fis4.-+ g8 | g4 bes,8[ c d ees] | %65
    f4 f4. f8 | bes,4 c8. d16 ees4 | a,2 a4 | d d4. d8 | g,2 g'4| %70
    f4 f4. f8 | f ees f d ees f | g f g f ees d | c bes c d ees c | d4 f f | %75
    bes8 a g f e g | fis4 d'2~| d4 c2~ | c4 bes2 a4 a4.-+ g8 | %80
    g4 d'2~_\markup {"doux."} | d4 c2~| c4 bes2 | a4 a4.-+ g8 | g4 g_\markup "fort." g | %85
    g f f | f ees ees | d g fis-+ | g r r | r d d | %90
    d c c | c bes a | bes g' g16( a bes8) fis4 f f | f ees ees16( f g8) | %95
    a,8. bes16 a4.-+ g8 | g4 r r | r d' d16( ees f8) | b,4 c c16( d ees8) | fis,8. g16 fis4. g8 | %100

    g4 bes'8[( c) bes( c)] | a[( bes) a( bes) a( bes)] | a[( bes) a( bes)] c4 | bes8.-+ a16 a4.-+ g8 | g4 g8[( a) g( a)] | %105
    fis[( g) fis( g) fis( g)] | fis[( g) fis( g)] a4 | g fis4.-+ g8 | g a bes a g f | e f g f e d | %110
    cis d e f g e | f8. e16 e4.-+ d8 | d4 d' d | d c c | c2 bes4 | %115
    a8-+[( g) a( bes) a( b16 c)] | b4 g c | c2 bes4 | bes4. bes8 a4 | g8[( f) g( a) g( a16 bes)] | %120
    a4-+ f bes | bes2 a4-+ | bes2 bes8( a) | g4 a8[( bes) e,( g)] | fis2-+~ fis8 d | %125
    e[( d) e( f) e( fis16 g)] | fis4-+  \appoggiatura e8 d4 g | c, d d, | %128

    \bar "||" \key g \major

    g4 b' b16[( c b8)] | a4 a a16[( b a8)] | %130
    g4 g g16[( a g8)] | fis8[ e fis g a fis] | g4 g g | g16[( a g8)] fis4 fis | fis16[( g fis8)] e4 e | %135
    a,4 a4.-+ g8 | g4\stemUp  b8.[ g16 b8. d16] \stemNeutral | d8.[ a16 a8. fis16 fis8. d16] | % 138
    d8.[ g16 g8. c16 c8. e16] | a,8.[ fis16 fis8. a16 a8. c16] | % 140
    \stemUp b8.[ g16 b8. g16 b8. d16] \stemNeutral | d8.[a16 a8. fis16 fis8. d'16] | %142
    \stemUp d8.[ g,16 g8. c16 c8. e16] \stemNeutral| a,8. b16 a4.-+ g8 | g2 b4 | %145
    a4 d fis, | g4. fis8[ g a] | fis4 d'4. c8 | b4 g b | a d fis, | %150

    g4. fis8[ g a] | fis4 d'4. c8 | b4 b2 | a4 d2 | b4 e2 | %155
    a,8. b16 a4.-+ g8 | g4 g2 | fis4 b2 | g4 c2 | fis,8. g16 fis4.-+ g8 | %160
    g4 g'2 | d4 e2 | b4 c4.-+( b16 c) | d4 e f | e fis g| %165
    fis4 g a8-+([ g16 a16)] | b8[( a) g( fis) e( g)] | fis8.-+ e16 e4.-+ d8 | d8[ c16(b) a8 b c d] | b2. | %170
    g'8[ f16( e)] d8.[ e16 f8. g16] | e8.-+ d16 d4.-+ c8 | c8.[ e16 e8. c16 e8. c16] | a8.[ d16 d8. b16 d8. b16] | %174
    g8.[ c16 c8. a16 c8. a16] | fis8.[ d'16] \times 2/3 {c8[( d c)]} \times 2/3 {b8[( c b)]} | a4 d2 | a4 b2 | fis4 g4.-+( fis16 g) | %179
    a8. b16 a4. g8 | %180
    g4 g' g | g fis8. e16 fis4~ | fis4 e8. d16 e4 | a,4 a4.-+ g8 | g4 b8. c16 b4 | %185
    a4-+ d d | g, g' g | g fis4.-+ g8 | g4 r r | r \appoggiatura g8 fis4 e8.-+ d16 | g4 r r |%190
    r4 d8.[ a16 d8. c16] | b4-+ r r |  r \appoggiatura g'8 fis4 e8.-+ d16 | g4 r r |	r4 d8.[ a16 d8. c16] | %195
    b4 b'4. b8 | b4 a4.-+ g8 | fis8[e fis g a fis] | g8. fis16 fis4.-+ e8 | e4 g4. g8 | %200

    gis4 gis4.-+( fis16 gis) | a2 a4 | a gis4.-+ a8 | a4 e4. e8 | e4 e4. e8| %205
    a4. a8[ b a] | g4.-+ fis8[g a] | fis4 fis4.-+ e16 fis | g8. d16 f4.( e16 f) | e4. e8 fis4 | %210
    g4 fis4. g8 | g4 \stemUp g, \stemNeutral b | a d fis, | g2 g4~ | g4 fis8[ g a fis] | %215
    g4 r g~ | g fis d'~| d c e | a, a4.-+ g8 | g4 g' g | %220
    g4 fis8( g) a( fis) | g4 b, e | a,8[( g) a( b) c( a)] | g4 g'8[( fis) g( a)] | fis8[( e) fis( g) a( fis)] | %225
    g2 g4 | g4 fis4.-+ g8 | g4 b,8[( a) b( c)] | a4 d4. c8 | b8[( c) d( b)] e4 | %230
    a,4 a4.-+ g8 | g2. \bar "|."

  }


}
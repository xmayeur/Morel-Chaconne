\version "2.24.0"




\new Staff	 {
  <<
    \new FiguredBass {
      \figuremode {
        \bassFigureExtendersOn
        \set figuredBassAlterationDirection = #RIGHT
        \override FiguredBass.BassFigure.font-size = #-2
        s2.|
        s2 <6>4|
        s2.|
        <4>4<3>2|
        s2. | s2.|
        s2 <6 5>4|
        <3\+>2.|
        s2.|
        <5 4>2 <3>4|
        <9>4<8>4 s4|
        s2.|s2.|
        <5 4>2 <3>4|
        <9>4 <8> s|
        s2.|
        s2.|
        <7>4 <6>8.<6>16 <6>4|
        <5/>4 <3> s|
        <7 5>4 <_+>2 |
        s2.|
        <_+>4 s <6>|
        s2 <6+>4|
        <7>4 <_+>4 <_+>|
        s2.|s2.|s2.|
        s2.*30|
        <5 4>4 <3+> <3+>
        <7>8 <6> <_->2|
        <5 4>8 <3+>8 s2|
        s2.|
        <5 4>4 <3+>4 <3+>|
        <7>8 <6> <_->2|
        <5 4>8 <3+>8 s2|
        s2.|
        <5/>2.|
        s2 <_->4|
        <5 4>4 <3> <3>8 <3>8|
        <5/>4 <5/> <5/>8 <5/>|
        <5 4>4 <3->4 <3->8 <3->|
        <6 5/>2.|
        s2.|
        <6>2.|
        s2.*2|
        <5 6>4 <7> <_+>|
        <_+\!> r4. <6>8|
        <9>8 <8>8 r4. <6+>8|
        <9 7>4 <8 6> s|
        <5 4>4 <3+>2|
        s4 s4. <6>8|
        <9>8 <8> s4 s8 <6+>|
        <9 8>4 <7 6> s|
        <5 4>4 <3+>2|
        s2.|
        <4>4 <5/>2|
        <9 4>4 <3- 8>2|
        <5 4>4 <6> <_+>|
        s2.|
        <4>4 <5/>2|
        <9 4>4 <3- 8>2|
        <5 4>4 <6> <_+>|
        s2.|
        <_+>4 <3->2|
        <9 7>4 <8 6>4. <3->8|
        <_+>2.|
        s2.|
        <_+>4 <3->4. <3->8|
        <9 5+ 3>4 <8 6 >s8 <_->|
        <_+>4 <_+>2|
        s2.|
        <_+>4 <_+> <_+>|
        <6 4 2+>4 s4 <6 5>|
        <4> <_+>2|
        s2.|
        <_+>4 <_+> <_+>|
        <4 2+>4. s8 <6 3>4|
        <6\! 4>4 <_+>2|
        s2. * 20|
        s2.|
        <5 4>4 <3>2|
        <9>4 <8>2|
        s2. *2|
        <5 4>4 <3>2|
        <9>4 <8>2|
        <4>4 <3+>2|
        s2.|
        <6>2.|
        <7>8<6>8 s2|
        <9>8<8>8s2|
        s2.|
        <6>2.|
        <6\!>2.|
        s2.*18|
        s2.*20|
        <5 4>4 <3>2|
        <9>8<8>s2
        <5 4>4<3>s|
        s2.|
        <4>8<3>s2|
        <9>8<8>s2|
        <5 4>4<3>s|
        s2.*9|
        <9 7>8<8 6> s2|
        <_+>2.|
        s4 <_+> <_+>|
        s2.|
        <4+>4 <4+>4. <4+>8|
        <6>2.|
        <7>4<_+><_+>|
        s2.|
        <4+>4<4+><4+>|
        <6>2.|
        <7>4<_+><_+>
        <7>2.|
        s2<5/>4|
        <9>8<8> s4 <6>|
        s2.*2|
        <4>4<3>s|
        <7><6>s|
        <4><3>s|
        s2.
        <5 4>4<3>s|
        <7><6>s
        <4><3>s|
        s2.|
        <4>4<3>s|
        s2.|
        <5 4>4<3>s|
        s2.*3|
        <5 4>8<3>s2|s2.*3|
        <5 4>8<3>8s2|
        s2.
      }
    }
  
    \new staff {
      \relative c' {

        \set Staff.instrumentName = #"BaËe Continue"
        %\set Staff.midiInstrument = #"Flute"
        \clef "bass"
        \key g \major
        \time 3/4 \override Rest.style =#'neomensural
        g2 g,4|d'2 d4|e2 c4 | d2.| g2 g,4 | d'2 d4| e2 c4| d2.| g2 g,4|d'2 d4| e2 c4| d2.|g2 g,4|
        d'2 d4|e2 c4| d2.|
        g,4 g' b|
        c, a'8. (b16 c4)|
        dis,4 (e8. fis16 g4)|
        a,4 b2| e4  r e |
        a4 r fis| g r e| fis8. g16 a4 a,| d r r |
        \compressEmptyMeasures R2.*5|
        <<
          {e'2.\rest e2.\rest  \cueClefUnset}
          \new CueVoice {
          \cueClef "treble" \stemUp   b''8(^"Traverso"c) b(c) b(c16 d) | a8. b16 a4.^+ g8
          }
        >>
        
        g,,8.[d'16 b8.g16 d'8.g,16]|
        d8.[a'16 d8. c16 d8.d,16]|
        e8.[ g16 c8. b16 c8. c,16]|
        d8.[c16 d8. e16 d8. d,16]|
        g8.[d''16 b8. g16 d'8. g,16]|
        d8.[a'16 d8. c16 d8. d,16]|
        e8.[ g16 c8.b16 c8. c,16]|
        d8.[c16 d8. e16 d8. d,16]|
        g'2 g,4|d'2 d4| e2 c4 |d2.|g2 g,4| d'2 d4|e2 c4| d2.| g2 g,4|
        d'2 d4|
        e2 c4| d2.|g2 g,4|d'2 d4|e2 c4|d2.|
        g4  \bar "||" \key f \major  g4 ^\markup {"B. mol"} g,| d'2 d4| ees2 c4| d2.| g2 g,4| d'2 d4| ees2 c4| d2.| g2 g,4|d'2.| ees2 c4|
        d4 d'8 ees d c |
        b a b! g a b!|
        c bes c d c bes|
        a g a f g a|
        % page 41
        bes2 r4 |
        ees,2 r4|
        f2 r4|
        bes,2 bes'4|
        g e a|
        d, r4 r8 bes8|
        c4 r4 r8 a|
        bes4. a8 bes c|
        d4 d,2|
        g4 r4 r8 bes ^\markup "doux."|
        c4 r4 r8 a|
        bes4. a8 bes c|
        d4 d,2|
        g8 ^\markup "fort." fis g a bes c|
        d c b a b! g|
        c b c d ees f|
        g, a bes g d' d,|
        g fis g a bes c|
        d c b a b! g|
        c b c d ees f|
        g, a bes g d' d,|
        g4 g8 bes c g|
        d'4 d, r8 d'|
        ees4 ees r8 c|
        d2.
        g4 g,8 a bes g|
        d'4 d, r8 d'|
        ees4 ees r8 c|
        d4 d,2|
        g4 g'4. g8|
        d'4 d, r8 d'|
        ees4. d8 c4|
        d d,2|
        g4 g,4. g8|
        d'4 d, r8 d'|
        ees4. d8 c4 |
        %page 42
        d4 d,2|
        g4 r4 r4|
        R2.*17|
        <<
          {e''2.\rest e2.\rest  \cueClefUnset}
          \new CueVoice {
          \cueClef "treble" \stemUp   fis'4^+^"Traverso" \appoggiatura e8 d4 g|c, d d,
          }
        >>        
        
        \key g \major
        g,,8 ^\markup "b.carre." fis g a b g|
        d'4. c8 d b|
        e4. d8 e c|
        d2.|
        g8 fis g a b g|
        d'4. c8 d b|
        e4. d8 e c|
        d4 d,2|
        g2 g4|
        fis r g|
        e r c|
        d2.|
        g2 g4|
        fis r d|
        e r c|
        d2.|
        %page 43
        g2g,4|
        d'2 d4| e2c4|
        d2.|
        g2 g,4|
        d'2 d4|
        e2c4|d2.|
        g4 g,8 a b g|
        e' d c d e c|
        d c b c d b|
        d4 d,2|
        g8 fis g a b g|
        d' c b c d b|
        e d c d e c|
        d4 d,2|
        g4 r r|
        R2.*17|
        <<
          {c'2.\rest c2.\rest  \cueClefUnset}
          \new CueVoice {
          \cueClef "treble" \stemUp   fis4^"Traverso" g4.^+(fis16 g) a8. b16 a4. g8
          }
        >>          
        g,4 g,8 a b c|
        d4. c8 d b|
        %page 44
        e2 c4|
        d2.|
        g4 g,8 a b c |
        d4. c8 d b|
        e2 c4|
        d2.
        g2 g,4|
        d'2 d4|
        e2 c4|
        d2. g2 g,4|
        d'2 d4|
        e2 c4|
        d2.|
        g8 fis g a b g|
        a g a b c a|
        b2.|
        e,4 b' b,|
        e e4. e8|
        d4 d,4. d'8|
        c4. c8 d c|
        b4 e e,|
        a a'4. a8|
        g4 g,4. g'8|
        fis4. fis8 g fis|
        e4 a a,|
        d2.|
        g2 b,4|
        c4. b8 a4|
        g d' d,|
        g'2 g,4|
        d'2 d4|
        e2 c4|
        d2.|
        g2 g,4|
        d'2 d4|
        e2 c4|
        d2.|
        g2 g,4|
        d'2 d4|
        e2 c4|
        d2.|
        g2 g,4|
        d'2 d4
        e2 c4|
        d2.| g2g,4|
        d' d2|
        e2 c4
        d4 d,2|
        g2. \bar "|."



        \bar "|."

      }
    }
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

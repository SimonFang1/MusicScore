

PartTreble = \relative c' {
  \time 4/4
  \tempo 4=60
  \partial 4
  e8 g |%0
  <<
    {a2~a4 a8 c | d2~d4 r}\\
    {f,4 e d r | f e \acciaccatura {f16 e} d4. e8}
  >>
  <<{f2 g\fermata}\\{bes,1}>> |%3
  \tag #'layout \acciaccatura{c16 cis}
  
  \tempo 4=140
  \repeat unfold 3 {
    \repeat unfold 3 {<a d>8. q16}
    \tuplet 3/2 {q8 q q} 
  } |
  \repeat unfold 3 {q8. q16}
  \tuplet 3/2 {q8 a c} |%7
  
  \time 6/8 \tempo 4=110
  q8 q d16 e         <f c>8 q f16 g |
  <e c>8 q d16 c     c16 d8 r16 a c |%9
  <a d>8 q d16 e     <f c>8 q f16 g |
  <e c>8 q d16 c     d4 a16 c       |%11
  <a d>8 q d16 f     <g d>8 q g16 a |
  <bes d,>8 q a16 g  a d,8 r16 d e  |%13
  <f d>8 q g         a16 d,8 r16 d f|
  e8 e f16 d         e4 a16 c       |%15
  <a d>8 q d16 e     <f c>8 q f16 g |
  <e c>8 q d16 c     c16 d8 r16 a c |%17
  <bes d>8 q d16 e   <f c>8 q f16 g |
  <e c>8 q d16 c     d4 a16 c       |%19
  <d a>8 q d16 f     <g d>8 q g16 a |
  <bes d,>8 q a16 g  a d,8 r16 d e  |%21 
  <f d>8 q g         a16 d,8 r16 d f|
  e8 e f16 e         d8 r  f16 g    |%23
  
  <a d,>8 q q  <bes d,>16 <a d,>8 r8. |
  <g c,>8 q q  q16 <a d,>8 r8.        |%25
  <a d,>8 q q  <bes d,>16 <a d,>8 r8. |
  g8 f e d r f16 g                    |%27
  <a d,>8 q q  <bes d,>16 <a d,>8 r8. |
  <g c,>8 q q  q16 <a d,>8 r8.        |%29
  <a d,>8 q q  <bes d,>16 <a d,>8 r8. |
  
  \time 3/8 
  g8 f e |%31
  \time 4/4 \tempo 4=140
  \repeat unfold 3 {
    d8. d16
  }
  \tuplet 3/2 {d8 d d}  |%32
  d8. d,16 d8. d16 \tuplet 3/2 {d8 d d} d a16 c |%33
  \time 6/8 \tempo 4=110
  % \acciaccatura{a16 c}
  <d a>8 q r    <f d> q d16 e |
  <f c>8 q r    <g d> q f16 g |%35
  <e c>8 q r   \acciaccatura{d16 dis} e8 e d16 c|
  d8  d'16 c d d c d r8  a16 c|%37
  <d a>8 q r <c a'> q d16 e   |
  <f c>8 q r <bes c,> q f16 g |%39
  <e c>8 q r     <c a> q r    |
  a a bes16 g a8  r  d,16 e   |%41

  f8. e16 f8       g(f\prall e)   |
  f g a           g4\prall f16 g  |%43
  a8. g16 f8        e (f e\prall) |
  d8. e16 c8         d4 d'16 e    |%45
  f8. e16 f8   \acciaccatura{fis16} g8 (f g)|
  a8 g\prall f       d4 d16 e     |%47
  f8 g a             bes d, g     |
  f8.\prall g16 e8   d8. e16 cis8 |%49

  \key a \minor \time 4/4 \tempo 4=140 
  \repeat unfold 3 {d8. d16} \tuplet 3/2 {d8 d d}
  \repeat unfold 3 {d8. d16} d4 |%51
  \acciaccatura{a16 b}
  c8. c16 b d8. a c16 b g8. |
  \acciaccatura{a16 b}
  c8. c16 b g8. a f16 d4\accent |%53
  \acciaccatura{a'16 b}
  c8. c16 b d8. a c16 b g8. |
  \acciaccatura{a16 b}
  c8. c16 b g8. a d,16 a'4\accent |%55
  \acciaccatura{a16 b}
  c8. c16 b d8. a c16 b g8. |
  c8. c16 \tuplet 3/2 {b8 g' f} \tuplet 3/2 {a f g} \tuplet 3/2 {f e c}|%57
  % c8. c16 \tuplet 9/8{b16 g' f a f g f e c} d4|%57
  d4 r4 r4 r8 a16 c |
  % r2 r4 r8 a16 c |

  \key d \minor \time 6/8 \tempo 4=110
  \repeat volta 2 {   
    <a d>8 q d16 e     <f c>8 q f16 g |
    <e c>8 q d16 c     c16 d8 r16 a c |%60%17
    <bes d>8 q d16 e   <f c>8 q f16 g |
    <e c>8 q d16 c     d4 a16 c       |%62%19 
    <d a>8 q d16 f     <g d>8 q g16 a |
    <bes d,>8 q a16 g  a d,8 r16 d e  |%64%21 
    <f d>8 q g         a16 d,8 r16 d f|
  }
  \alternative {
    { e8 e f16 d       e8 r  a,16 c    |}%66%23
    { e8 e f16 e d8 d16 d e8| }%67
  }
  f8 f16 f g8 a r   f16 d |%68
  a8 r4     bes'8 r g16 d |
  bes8 r4  <d a>8 r <e a,>16 <d a> |%70
  \time 3/8
  <cis a>8 r f16 g |
  \time 6/8
  <a d,>8 q q     <bes d,>16 <a d,>8 r8. |%72
  <g c,>8 q q     q16 <a d,>8 r8.        |
  <a d,>8 q q     <bes d,>16 <a d,>8 r8. |%74
  g8 f e             d r f16 g           |
  <a d,>4 r8         <bes d,>4 r8        |%76
  <a c,>8 q q        q16 <g c,>8 r8.     |
  <g bes,>4 r8       <f a,>4 r8          |%78
  e8 f e             e16 d8 d16 e f      |
  <a d,>8. d,16 e f  <bes d,>8. d,16 e f |%80
  <a c,>8 q q        q16 <g c,>8 r8.     |
  a,,8 b cis d e f        |%82
  g gis a b c cis         |
  d e f fis g gis         |%84
  <a d,>4 r8 <bes d,>4 r8 |
  r8 \acciaccatura{gis16} a8 g f f16 e d r |
  r8 g, f f f16 e d8~ d2\fermata r4|
  \tag #'midi \grace{d16 f a d}
  <d, f a d>4\arpeggio r2|
}


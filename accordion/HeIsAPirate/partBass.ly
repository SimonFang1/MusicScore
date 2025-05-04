\include "accordion/bass.ly"

rythm =
#(define-music-function
    (parser location p)
    (ly:pitch? )
  #{
    $p 8. $p 8 r16
  #})


rootnotes = {
  r4 | f1^"M" | d^"m" | bes2^"M" g^"m" |%3
  \repeat unfold 4 {
    d4 d d d
  } |%7

  % \time 6/8
  \repeat unfold 2 {
    \rythm d \rythm f | \rythm c \rythm d
  } |%11
  \rythm d \rythm g   | \rythm bes \rythm d |%13
  \rythm bes \rythm d | \rythm a \rythm a   |%15
  \rythm d \rythm f   | \rythm c \rythm d   |%17
  \rythm bes \rythm f | \rythm c \rythm d   |%19
  \rythm d \rythm g   | \rythm bes \rythm d |%21
  \rythm bes \rythm d | \rythm a d8 r4      |%23

  d8. d d   d16 d d   | c8. c d  d16 d d    |%25
  d8. d d   d16 d d   | a8. a d8 r16 d d d  |%27
  d8. d d   d16 d d   | c8. c d  d16 d d    |%29
  d8. d d   d16 d d   |
  % \time 3/8
  a8. a|%31
  % \time 4/4
  d4 d d d|
  d4 d d d8 r|%33
  \time 6/8
  \rythm d \rythm d   | \rythm f \rythm f |%35
  \rythm c \rythm c   | d8 d d d r4       |%37
  \rythm d \rythm d   | \rythm f \rythm f |%39
  \rythm c \rythm c   | a8 a a a r4       |%41

  d8 s s c s s     | f s s c s s     |%43
  f  s s a s s     | d s^"m" a d s r |%45
  d  s s c s s     | f s s bes s s   |%47
  d  s s g s^"m" s | a s^"7" s d4 a8 |%49 

  \key a \minor  %\time 4/4
  \repeat unfold 8 {
    d4 
  } | %51
  | d1~d d~d d~d~ |%57
  d4 r4 r2 |%58
  \key d \minor
  % R1 |%58
  \repeat volta 2 {
    \rythm d \rythm f   | \rythm c \rythm d   |%60%17
    \rythm bes \rythm f | \rythm c \rythm d   |%62%19
    \rythm d \rythm g   | \rythm bes \rythm d |%64%21
    \rythm bes \rythm d |%65
  }
  \alternative {
    { \rythm a \rythm a |}%66
    { \rythm a d8 d cis |}%67
  }
  c8 c b       d8.^"m" d |%68
  d8. d16 d d  g8. g     |
  g8. g16 g g  a8.^"7" a |%70
  %\time 3/8
  a8. a |
  %\time 6/8
  d8. d        d d16 d d    |%72
  c8. c        d d16 d d    |
  d8. d        d d16 d d    |%74
  a8. a        d8 r16 d d d |
  d8. d16 d d  g8. g16 g g  |%76
  f8. f        c   c16 c c  |
  g8. g16 g g  d8. d16 d d  |%78
  a8. a        d8 r16 d d d |
  d8. d16 d d  g8. g16 g g  |%80
  f8. f        c  d16 d d   |
  a8 gis g fis f d          |%82
  a  gis g fis f e          |
  d  cis c b bes a          |%84
  d4 d8        g4 g8        |
  a8 a2 d8                  |%86
  r8 a2 d8~                 |
  d2\fermata r4             |%88
  d4 r2                     |
}

chordnotes = \chordmode{
  s4 | f1 | d:m | bes2 g:m |%3
  \repeat unfold 4 {
    s1
  }|%7

  \repeat unfold 2 {
    d8.:m d8:m s16 f8. f8 s16 |
    c8. c8 s16 d8.:m d8:m s16 
  } |%11
  d8.:m d8:m s16 g8.:m g8:m s16     |
  bes8. bes8 s16 d8.:m d8:m s16 |%13
  bes8. bes8 s16 d8.:m d8:m s16 |
  a8.:7 a8:7 s16 a8.:7 a8:7 s16 |%15
  d8.:m d8:m s16 f8. f8 s16     |
  c8. c8 s16     d8.:m d8:m s16 |%17
  bes8. bes8 s16 f8. f8 s16     |
  c8. c8 s16     d8.:m d8:m s16 |%19
  d8.:m d8:m s16 g8.:m g8:m s16 |
  bes8. bes8 s16 d8.:m d8:m s16 |%21
  bes8. bes8 s16 d8.:m d8:m s16 |
  a8.:7 a8:7 s16 d8:m s4        |%23

  d8.:m q q   q16 q q    |
  c8. c d:m   q16 q q    |%25
  d8.:m q q   q16 q q    |
  a8.:7 q d8:m s16 q q q |%27
  d8.:m q q   q16 q q    |
  c8. c d:m   q16 q q    |%29
  d8.:m q q   q16 q q    |
  % \time 3/8
  a8.:7 q |%31
  % \time 4/4
  s1 * 2 |%33
  \time 6/8
  d8.:m d8:m s16 d8.:m d8:m s16 |
  f8. f8 s16     f8. f8 s16     |%35
  c8. c8 s16     c8. c8 s16     |
  d8:m q q q s4                 |%37
  d8.:m d8:m s16 d8.:m d8:m s16 |
  f8. f8 s16     f8. f8 s16     |%39
  c8. c8 s16     c8. c8 s16     |
  a8:7 q q q s4                 |%41

  s8 d:m q s c c    |
  s  f f   s c c    |%43
  s  f f   s a:7 q  |
  s d:m s  s d:m s  |%45
  s d:m q  s c c    |
  s  f f   s bes q  |%47
  s d:m q  s g:m q  |
  s a:7 q  d4:m a8:7|%49
  s1*9 |%58
  % s1*7 | s4*3 d4:m | s1 |%58
  \repeat volta 2 {
    d8.:m d8:m s16 f8. f8 s16     |
    c8. c8 s16     d8.:m d8:m s16 |%60%17
    bes8. bes8 s16 f8. f8 s16     |
    c8. c8 s16     d8.:m d8:m s16 |%62%19
    d8.:m d8:m s16 g8.:m g8:m s16 |
    bes8. bes8 s16 d8.:m d8:m s16 |%64%21
    bes8. bes8 s16 d8.:m d8:m s16 |
  }
  \alternative {
    { a8.:7 a8:7 s16 a8.:7 a8:7 s16|}%66%23
    { a8.:7 a8:7 s16 s4.}%67
  }
  s4.   d8.:m q        |%68
  q8. q16 q q g8.:m q  |
  q8. q16 q q a8.:7 q  |%70
  %\time 3/8
  a8.:7 a:7 |
  %\time 6/8
  d8.:m q        q q16 q q      |%72
  c8. c          d:m q16 q q    |
  q8. q          q   q16 q q    |%74
  a8.:7 q        d8:m r16 q q q |
  q8. q16 q q    g8.:m q16 q q  |%76
  f8. q          c q16 q q      |
  g8.:m q16 q q  d8.:m q16 q q  |%78
  a8.:7 q        d8:m r16 q q q |
  q8. q16 q q    g8.:m q16 q q  |%80
  f8. q          c q16 q q      | 
  s2.*3                         |%82
  d4:m q8        g4:m q8        |
  s8 a2:7 d8:m                  |%84 
  s8 a2:7 s8|  s2.               |%86
  d4:m s2                       |
}

PartBass = \MakeBass \rootnotes \chordnotes

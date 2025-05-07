\version "2.24.1"

\header {
  title = "美丽的神话"
  subtitle = "《神话》电影主题曲"

  % 自定义字段
  mycomposer = "王中言"
  mypoet = "崔浚荣"
  myarranger = "编曲人"
  mysinger = \markup \override #'(word-space . 0.5) {  % 调整汉字间距
    \with-color #blue "孙楠" 
    \with-color #black " & "
    \with-color #red "韩红"
  }
  
  tagline = ##f  % 关闭默认底部标记
}

\paper {
  #(define fonts
    (set-global-fonts
      #:roman "Noto Sans CJK SC"
      #:sans "Noto Sans CJK SC"
      #:factor (/ staff-height pt 20)
    ))

scoreTitleMarkup = \markup {
    \column {
      \translate #'(85 . 0)  % X=80mm, Y=0mm（从顶部）
      % \pad-around #1 {
        \column {
          \line { "作词：" \fromproperty #'header:mypoet }
          \line { "作曲：" \fromproperty #'header:mycomposer }
          \line { "演唱：" \fromproperty #'header:mysinger }
        }
      % }
    }
  }
  % \vspace #4  % 标题与乐谱间距
}

leaderLyric = \lyricmode {
  % verse 1
  梦 中 人 熟 悉 的 脸 孔,
  你 是 我 守 候 的 温 柔.
  就 算 泪 水 淹 没 天 地,
  我 不 会 放 手.

  每 一 刻 孤 独 的 承 受,
  只 因 我 曾 许 下 承 诺.

  % verse 2 & chorus
  \repeat unfold 14 {\skip 1}

  % verse 3
  枕 上 雪 冰 封 的 爱 恋,
  真 心 相 拥 才 能 融 解.
  风 中 摇 曳 炉 上 的 火,
  不 灭 亦 不 休.
  等 待 花, 春 去 春 又 来,
  岁 月 笑 我 痴 狂.
  心 如 钢 铁 任 世 界 荒 芜,
  思 念 永 相 随.

  % chorus2
  万 世 沧 桑 唯 有 爱 是 永 远 的 神 话,
  潮 起 潮 落 始 终 不 悔 真 爱 的 相 约.
  几 番 苦 痛 的 纠 缠, 多 少 黑 夜 挣 扎,
  紧 握 双 手 让 我 和 你 再 也 不 离 分.

  悲 欢 岁 月 唯 有 爱 是 永 远 的 神 话,
  谁 都 没 有 遗 忘 古 老, 古 老 的 誓 言.
  你 的 泪 水 化 为 满 天 飞 舞 的 彩 蝶,
  爱 是 翼 下 之 风 两 心 相 随 自 在 飞.

  悲 欢 岁 月 唯 有 爱 是 永 远 的 神 话, 
  谁 都 没 有 遗 忘 古 老, 古 老 的 誓 言.
  你 的 泪 水 化 为 满 天 飞 舞 的 彩 蝶,
  爱 是 翼 下 之 风 两 心 相 随 自 在 飞.
}

followerLyric = \lyricmode {
  % verse 2
  你 我 之 间 熟 悉 的 感 动,
  爱 就 要 苏 醒.

  % chorus
  万 世 沧 桑 唯 有 爱 是 永 远 的 神 话,
  潮 起 潮 落 始 终 不 悔 真 爱 的 相 约.
  几 番 苦 痛 的 纠 缠,
  多 少 黑 夜 挣 扎,
  紧 握 双 手 让 我 和 你 再 也 不 离 分.

  % verse 3
  \repeat unfold 14 {\skip 1}
  等 待 花 开 春 去 春 又 来,
  无 情 岁 月 笑 我 痴 狂.
  \repeat unfold 118 {\skip 1}

  % end
  你 是 我 心 中 唯 一 美 丽 的 神 话.
}

bass_i = {
  \clef "bass"
  \key fis \minor
  \transpose c a {
    % pre
    % \partial 2
    \time 2/4 
    a,,8 e, c4   g,,8 d, b,4
    <f,, f,>4 <g,, g,> c,8 g, d e
    a,,8 e, c4   g,,8 d, b,4
    f,,8 c, a,4  \time 4/4 g,8 b, d b, g,2
  }
}

bass_ii = {
  \clef "bass"
  \key fis \minor
  \transpose c a {
    % middle
    a,,8 e, a, c  e,, b,, e, g,
    a,,8 e, a, c <f,, f,>4 <g,, g,>
    a,,8 e, a, c  e,, b,, e, g, 
    f,,16 c, a, f~f2 c16 a, f,8
  } 
}

bass = {
  \bass_i s1 * 24 \bass_ii
}

melody = {
  \clef treble
  \key fis \minor
  \transpose c a {\relative c' {
    % intro
    \time 2/4
    <<
    {
      c'4. b16 a b4 e, 
      a4. g16 f e8. f32 e d8 e 
      c d e c b4 e8 g 
      a4 g \grace{e8} \time 4/4  d1 \break
    }
    {
      \new Staff \with {
        \remove "Staff_performer"
      } \transpose a c {\bass_i}
    }
    >>
    
    % verse and chorus
    s1 * 23 s2. a8 b | \break

    % middle
    <<
    {
      c4 b8 a g4    r8 a16 b|
      c8 g' b, c a4 r8 a16 b|
      c'8 d e  c b a g e | d1 \break
    }
    {
      \new Staff \with {
        \remove "Staff_performer"
      } \transpose a c {\bass_ii}
    } 
    >>
    % verse3 
    s1 * 8
    % verse4
    s1 * 8
    % chorus
    s1 * 23
    s2 * 3
    % end
    s1 * 2 s2
    c4 g' b,8 a~a2.
    \bar "|."
  }}
}

leader = {
  \clef treble
  \key fis \minor
  \override Stem.direction = #UP
  \override NoteHead.color = #blue
  \override Beam.color = #blue
  \override Stem.color = #blue
  \override Slur.color = #blue
  \override Dots.color = #blue

  \transpose c a {\relative c' {
    % intro
    s2 * 7
    s1
    % verse1
    a4 e' b2 | a8 c d8. c16 e2 |
    a,4 a' g8 a g d | f8 e~e2 r4 |
    a,4 a' g8 d e f e2 c |
    a4 e' d4. b8 a2. r4 |

    % verse2 
    a4 e' b2 | a8 c d c16 e~e2 |
    a,4 a' g8 a g d | f8 e~e2 r4 |
    a,4 a' g8 d16 e~e8 f e4 d c2 |
    a4 e' d4. a16 (b) a2. s4 |

    % chorus1
    s1 * 8

    % middle
    s1 * 4

    % verse3 (similar to verse1)
    a4 e' b2 | a8 c d8. c16 e2 |
    a,4 a' g8 a g d16 f~f8 e8~e2 r4 |
    a,4 a' g8 d16 e e8(f) | e4 (d) c2 |
    a4 e' d4. a16(b) a2. s4 |

    % verse4
    s2 a4 e' b2 r8 g'16 g g(e) e 
    e~e2 b'8 c16 b~ b8 g | g8 e~e2 s4 |
    a,4 a' g8 d16 e~e8 f e4 d8. (c16) c2 |
    a4 e' d4. a16 (b) a2. a8 b |

    % chorus2
    c8 d e  c  b4 g | a8 c d e16 e~e4 a,8 b |
    c8 d e  c  b4 g | a8 c d c16 c~c4 a8 b  |

    c8 d e (c) b4 g | a8 c \tuplet 3/2 {d8 c e} e4 a,8 b |
    c8 d e  c  b4 g |
    a8 c d8. c16 c4 a8 b |
    c8 d e c b4 g |
    a8 c d8 e16 e16~e4 a,8 b |
    c8 d e c b4 g |
    a8 c16 d8. c16 c~c4 a8 b |

    c8 d e c b4 g | a8 c d e16 e~e4 a,8 b|

    c8 d e c b4 g |
    a8 c d c16 c~c4 a8 b |

    c8 d e g a4 g | 
    a8. g16 g8 f16 e~e4 a,8 b |
    c8 d e g a8. (g16) g4 |
    a8. g16 g8 f16 e~e4 a,8 b |
    c8 d e g a8. (g16) g4 | 
    c8. b16 a8 g16 e~e4 c8 d |
    e8 g g g a8. (g16) g4

    \time 2/4
    a8 g g f16 e~e2~e4 s4 |
  }}
}

follower = {
  \clef treble
  \key fis \minor
  \override Stem.direction = #DOWN
  \override NoteHead.color = #red
  \override Beam.color = #red
  \override Stem.color = #red
  \override Slur.color = #red
  \override Dots.color = #red
  \transpose c a {\relative c' {
    % intro
    s2 * 7
    s1

    % verse1
    s1 * 8
    % verse2 
    s1 * 4
    a4 e' d8 b16 c~c8 d
    c4 b8. (a16) a2
    a4 c b4. a16 (g) a2. a8 b

    % chorus
    c8 d e c b4 g | a8 c d e16 e~e4 a,8 b|
    c8 d e c b4 g | a8 c d c16 c~c4 a8 b |
    c8 d e(c16) b4( g16) g4 |
    a8 c \tuplet 3/2 {d8 c e} e4 a,8 b |
    c8 d e c b4 g |
    a8 c16 d8. c16 c~c2 | 

    % middle
    s1 * 4

    % verse3
    s1 * 4
    a4 e' d8 b16 c c8 d | c4 (b) a2 |
    a4 c b4. a16 (g) a2. r4 

    % verse4 (similar to leader's verse2)
    a4 e' b4. g8 | a8 b c d16 e~e2 |
    a,4 a' g8 a16 g16~g8 d | f8 e~e2 r4 |
    % (similar to follower's verse2)    
    a,4 e' d8 b16 c~c8 d
    c4 b8. (a16) a2
    a4 c b4. a16 (g) a2. s4

    % chorus2
    s1 *7 s2. a8 b|

    c8 d e c b4 g |
    a8 c d8 e16 e16~e4 a,8 b |
    c8 d e c b4 g |
    a8 c16 d8. c16 c~c4 a8 b |

    c8 d e c b4 g | a8 c d e16 e~e4 a,8 b|
    c8 d e c b4 g | a8 c d c16 c~c4 a8 b |

    c8 d e c b4 g | a8 c d8 g16 e16~e4 a,8 b |
    c8 d e c b8.(g16) g4 | a8. c16 d8 c16 c~c4 a8 b |
    c8 d e c b8.(g16) g4 | a8 c d8 e16 e16~e4 a,8 b |
    c8 d e c b8.(g16) g4 |
    \time 2/4
    a8 c d c16 c ~ c2~c4 r4 |

    \time 4/4
    c8 c16 d e8 c b4 g | c4 b g4. a16 (b) |
    a1~a2 s2
  }} 
}

chordNotes = \transpose c a,, {
  \absolute { \chordmode{
    % intro
    a2:m g2 %e2:m/g
    f2 c2
    a2:m g2
    f2 g1

    % verse1 
    a2:m e'2:m/g
    f2 c2 f2 g2 c1
    f2 g2 e'2:m a2:m
    f2 g2 a1:m

    % verse 2
    a2:m e'2:m/g
    f2 c2 f2 g2 c1 
    f2 g2 e'2:m a2:m 
    f2 g2 a1:m

    % chorus
    \repeat unfold 3 {a2:m g2 f2 c2}
    a2:m g2 
    f2 a2:m

    % middle
    a2:m e:m
    a2:m f2
    a2:m e:m
    f1

    % verse 3
    a2:m e'2:m/g
    f2 c2 f2 g2 c1     
    f2 g2 e'2:m a2:m 
    f2 g2 a1:m

    % verse 4
    a2:m e'2:m/g
    f2 c2 f2 g2 c1 
    f2 g2 e'2:m a2:m 
    f2 g2 a1:m

    % chorus
    \repeat unfold 11 {a2:m g2 f2 c2}
    a2:m e2:m
    f2 c2. s4

    % end
    f2 g2 f2 g2 a2:m
  }}
}


\score {

  <<
    \new ChordNames \with {
      \override ChordName.font-size = #-2 
    } \chordNotes

    \new Staff {
      <<
        \new Voice = "melody" \melody
        \new Voice = "leader" \leader
        \new Voice = "follower" \follower
      >>
    }

    % Lyrics
    \new Lyrics { 
      \lyricsto "follower" {\followerLyric}
    }
    \new Lyrics {
      \lyricsto "leader" { \leaderLyric }
    }
  >>
  \layout {
    \context {
      \Score
      \override SpacingSpanner.spacing-increment = #0.8 % 调整小节宽度
      \override StaffSymbol.staff-line-spacing = #'((basic-distance . 0.8))
      \override SystemSystemSpacing.basic-distance = #10
      
    }
    \context {
    \Lyrics
    \override LyricText.vertical-skylines = #'()
  }
  }
}

\score {
  <<
    \new ChordNames \with {
      midiInstrument = "acoustic guitar (nylon)"
    } {\chordNotes}

    % Melody
    \new Staff \with {
      midiInstrument = "acoustic grand"
    } {
      \new Voice = "melody" \melody
    }

    % Bass
    \new Staff \with {
      \clef "bass"
      midiInstrument = "acoustic bass"
    } {
      \new Voice = "bass" \bass
    }

    % Leader
    \new Staff \with {
      midiInstrument = "tenor sax"
    } {
      \new Voice = "leader" \leader
    }

    % Follower
    \new Staff \with {
      midiInstrument = "violin" 
    } {
      \new Voice = "follower" \follower
    }
  >>

  \midi {
    \tempo 4=60
  }
}

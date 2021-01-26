\version "2.18.2"

\header {
  title = "He's a Pirate"
  subtitle = \markup {"from " \italic "Pirates of the Caribbean: Dead Men Tell No Tales"}
  composer = "Dimitri Vegas & Like Mike"
  enteredby = "闰宫清羽"
  % tagline = ##f
}

% Page configurations
\pointAndClickOff

% built-in include files
\include "articulate.ly" % for decoration pitches

% user defined files
\include "partTreble.ly"
\include "partBass.ly"


music = \new GrandStaff \with {instrumentName = "Accordion"} <<
  \new Staff \relative c' {
    \set Staff.midiInstrument = # "accordion"
    \clef treble
    \key d \minor
    \new Voice {
      \PartTreble
    }
    \bar "|."
  }
  \new Staff {
    \set Staff.midiInstrument = # "accordion"
    \clef bass
    \key d \minor
    \PartBass
    \bar "|."
  }
>>

\score {
  \keepWithTag #'(layout chordname) \music
  \layout{}
}

\score {
  \articulate
  \unfoldRepeats
  \keepWithTag #'midi \music
  \midi {}
}

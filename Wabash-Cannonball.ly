\header {
  title = "Wabash Cannonbal"
  composer = "Traditional"
}

chordsI = \chordmode{
  g1 g g c \break
  }
chordsII = \chordmode{
  d1:7 d1:7 d1:7 g \break
  }

harmonies = \chordmode {
  \chordsI 
  \chordsII 
  \chordsI 
  \chordsII 
}
notesI = {
  d'4 d g a
  b d2 b4
  b b a g
  c,2. e8 e
}
notesII = {
  d4 d fis a
  b a2 a4
  fis g fis e
  d2. d8 d
}
notesIII = {
  d4 d g a8 a
  b4 d2 b8 b
  b4 b a g 
  c,2. e4
}
notesIV = {
  d4 d fis a
  b a2 a8 a
  fis4 d e fis 
  g1 
}
melody = 
  \relative {
  \override Score.MetronomeMark.padding = #3
  \tempo "lively" 4 = 140
  \key g \major
  \notesI
  \notesII
  \notesIII
  \notesIV
}
verseI = \lyricmode{
  \set stanza = "1."
    From the great  Atlantic oc -- ean, to the wide Pa -- cific shore,
    she climbs ov -- er flow -- ery moun -- tains, over hills and by the shore.
    Hear the  migh -- ty rush of the en -- gines, hear the lone -- some ho -- bo's call.
    We're rid -- ing thru to Di -- xie on the Wab -- ash Can -- non -- ball!
}

verseII = \lyricmode{
  \set stanza = "2."
  Our eastern states are dan -- dy, so the peo -- ple always say.
  From _ New York to St. Lou -- is and Chic -- ago by the way,
  from the hills of Min -- ne _ so -- ta where the ripp -- ling wat -- ers fall,  
  no chang -- es can be tak -- en, on the Wab -- ash Can -- non -- ball!
}
chorus = \lyricmode{
  \set stanza = "chorus"
  List -- en to the jin -- gle, the rum -- ble and the roar,
  As she glides a -- long the wood -- land, by hills and by the shore.
  Hear the migh -- ty rush of the en -- gine, hear that lone -- some ho -- bo's call,
  We're rid -- ing through the jung -- le on the Wab -- ash Can -- non -- ball
}

\score {
  \new Staff \with {midiInstrument = "acoustic guitar (steel)"}
   { 
   <<   \new ChordNames {
     \set chordChanges = ##t
     \harmonies 
      }
   \new Voice = "one" {\melody}
   \addlyrics{ \verseI }
   \addlyrics{ \verseII }
   \addlyrics{ \chorus }
  >>
  }
  \layout {}
  \midi {}
}
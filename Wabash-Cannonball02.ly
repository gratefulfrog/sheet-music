\version "2.18.2"

\header {
  title = "Wabash Cannonball"
  composer = "Traditional - Gratefulfrog"
}

#(set-default-paper-size "a4")

\paper{
  ragged-bottom=##t
  %bottom-margin=0\mm
  page-count = 1
}

chordsI = \chordmode{
  g1 | g | g | c| \break
  }
chordsII = \chordmode{
  d1:7 | d1:7 | d1:7 | g | \break
}

allChords = \chordmode {
  \chordsI 
  \chordsII 
  \chordsI 
  \chordsII 
}
speed = {
  \tempo "country" 4 = 140
}

notesI =  {
  d4 d g a  |
  b d2  b4  |
  b b a g   |
  c,2. e8 e |
}
notesImidi =  {
  d4 d g a  |
  b d'2  b4 |
  b b a g   |
  c2. e8 e  |
}

notesII = {
  d4 d fis a   |
  b a2 a4      |
  fis g fis e  |
  d2. d8 d     |
}
notesIII = {
  d4 d g a8 a  |
  b4 d2 b8 b   |
  b4 b a g     |
  c,2. e4      |
}
notesIIImidi = {
  d4 d g a8 a |
  b4 d'2 b8 b |
  b4 b a g    |
  c2. e4      |
}
notesIV = {
  d4 d fis a   |
  b a2 a8 a    |
  fis4 d e fis |
  g1           |
}
allNotes = {
  \notesI
  \notesII
  \notesIII
  \notesIV
}
allNotesMidi = {
  \notesImidi
  \notesII
  \notesIIImidi
  \notesIV
}

verseI = \lyricmode{
  \set stanza = "1."
    From the great  Atlantic oc -- ean, to the wide Pa -- cific shore,
    she climbs ov -- er flow -- ery moun -- tains, over hills and by the shore.
    Hear the  might -- y rush of the en -- gines, hear the lone -- some ho -- bo's call.
    We're rid -- ing thru to Di -- xie, on the Wab -- ash Can -- non -- ball!
}



\score {
  <<
  \new Staff {
    %\set Staff.midiInstrument = #"electric guitar (jazz)"
    %\set Staff.midiInstrument = #"electric guitar (clean)"
    %\set Staff.midiInstrument = #"electric guitar (muted)"
    %\set Staff.midiInstrument = #"overdriven guitar"
    %\set Staff.midiInstrument = #"distorted guitar"
    \set Staff.midiInstrument = #"acoustic guitar (steel)"
    
    \clef treble
    \key g \major
    \speed
    \relative c'
    \allNotes
  }
  \addlyrics{ \verseI }

  \new Staff {
    \clef treble
    \key g \major
     %\set Staff.midiInstrument = #"electric guitar (jazz)"
      %\set Staff.midiInstrument = #"electric guitar (clean)"
      \set Staff.midiInstrument = #"electric guitar (muted)"
      %\set Staff.midiInstrument = #"overdriven guitar"
      %\set Staff.midiInstrument = #"distorted guitar"
      %\set Staff.midiInstrument = #"acoustic guitar (steel)"
    \speed
    \allChords
  }
  
   
  
  >>
  \layout {}
  \midi {}
}
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
  g1 | g  | g | c | \break
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



\score {
  <<
  \new Staff {
    \allChords
  }
  >>
  \layout {}
  \midi {}
}
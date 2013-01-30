\version "2.12.2"

#(set-global-staff-size 18)

%\pointAndClickOff

\header {
%  dedication = "Dedikering"
   title = "De smukke"
%  subtitle = ""
%  poet = "1 Vanster"
%  meter = "2 Vanster"
   composer = "P. Heise"
%  arranger = "Hoger 2"
   tagline = "Efter J. L. Runeberg"
   copyright = \markup { \fontsize #-4 \bold "VGMK Våren 2013" }
}

\paper {
%  page-count = 1
%  left-margin = 45
   line-width = 140
   top-margin = 25
   bottom-margin = 25
%  systems-per-page = 4
%  ragged-last-bottom = ##f
%  annotate-spacing = ##t
%  foot-separation = 7
}

mybreak = { \break }

settings = \relative c {
   \tempo "Allegretto leggiero" 4.=120
   \key as \major
   \time 12/8
   \autoBeamOff
   #(set-accidental-style 'modern-cautionary)
   \override TextSpanner #'(bound-details left text) = "rit."
   \partial 8*7
}

%\slashedgrace Only available in lilypond 2.15+
sg = #(define-music-function (parser location note ) (ly:music?)
  #{
      \once \override Stem #'stroke-style = #"grace"
      \grace $note
  #})

tenorOne = \relative es' {
   \settings
%210
   es8 \sg f es d es \sg f es d es | es2.~(
   es4 f8 es4 f8) | es4 r8 r4 es8 \sg f es d es \sg f es d es |
   \mybreak

%211
   es2.~( es4. des4.) | c4 r8 r4 c8
   \sg des c b c \sg des c b c | d4. c2. r4 r8 |
   \mybreak

%212
   r4 r8 r4 r8 r4 r8 es4. ^\f | es4( as8) g4 f8 es4( ^\> d8) es4 f8 \! |
   \mybreak
   f4. es r4 r8 d4. ^\mf | f4 es8 bes4 c8 es4 d8 as4 bes8|
   \mybreak

%213
   des4( c8) des4 ^\< c8 c4( bes8) f'4 es8 | es4. \! \f ( as-> g) f | es( as-> g) f |
   \mybreak
   es4 ^\< f8 ges2. \! a,8 gis a | bes4.( g'2. f4.) | es r4 r8 r4 r8 r4 bes8 ^\p |
   \mybreak

%214
   bes4. des2. g,4. | es'4( f8) es4 f8 es4( f8) es4 f8 |
   \mybreak
   bes,4. des2. g,4. | es'4( f8) es4 ^\< f8 es4( f8) es4 f8 |
   \mybreak

%215
   ges2.~ ges4. f | f1. |
   \mybreak
   f2. \> es | es~
   \mybreak

%216
   es2. | d2.~ d4. \! \tempo "dolce" d | es( f) g as |
   \mybreak
   c,( des) d es | as,2.( ^\p ^\< c~ | c\> bes) \! | as1.~ | as8 r r r4 \fermata
   \bar ":|"
}

tenorTwo = \relative c' {
   \settings
   c8
}

bassOne = \relative as {
   \settings
   as8
}

bassTwo = \relative es {
   \settings
   r8
}

firstVerse = {
   \set stanza = "1."
   \lyricmode {
      Jeg
   }
}

%% Layout
\book{
   \score {
      \new ChoirStaff <<
         \new Staff <<
            \clef "G_8"
            \set Staff.instrumentName = "Tenor"
            \new Voice = "tenorOne" { \voiceOne \tenorOne }
            \new Voice = "tenorTwo" { \voiceTwo \tenorTwo }
            \new Lyrics \lyricsto "tenorOne" { \firstVerse }
         >>

         \new Staff <<
            \clef bass
            \set Staff.instrumentName = "Bas"
            \new Voice = "bassOne" { \voiceOne \bassOne }
            \new Voice = "bassTwo" { \voiceTwo \bassTwo }
         >>
      >>
      \layout{}
   }
}


#(define output-count -10) % Removes numbering
#(define output-suffix "alla")
\book{
   \score {
      \new ChoirStaff <<
         \new Staff <<
            \set Staff.instrumentName = "TenorOne"
            \new Voice = "tenorOne" { \unfoldRepeats \tenorOne }
         >>
         \new Staff <<
            \set Staff.instrumentName = "TenorTwo"
            \new Voice = "tenorTwo" { \unfoldRepeats \tenorTwo }
         >>

         \new Staff <<
            \set Staff.instrumentName = "BasOne"
            \new Voice = "bassOne" { \unfoldRepeats \bassOne }
         >>
         \new Staff <<
            \set Staff.instrumentName = "BasTwo"
            \new Voice = "bassTwo" { \unfoldRepeats \bassTwo }
         >>
      >>
      \midi{}
   }
}


#(define output-suffix "tenor1")
\book { \score { { \unfoldRepeats \tenorOne } \midi {\context{\Score \remove "Dynamic_performer"}} } }
#(define output-suffix "tenor2")
\book { \score { { \unfoldRepeats \tenorTwo } \midi {\context{\Score \remove "Dynamic_performer"}} } }
#(define output-suffix "bas1")
\book { \score { { \unfoldRepeats \bassOne } \midi {\context{\Score \remove "Dynamic_performer"}} } }
#(define output-suffix "bas2")
\book { \score { { \unfoldRepeats \bassTwo } \midi {\context{\Score \remove "Dynamic_performer"}} } }

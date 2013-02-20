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

mybreak = {
%\break
}

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
   f4. es r4 r8 d4. ^\mf | f4 es8 bes4 c8 es4 des8 as4 bes8|
   \mybreak

%213
   des4( c8) des4 ^\< c8 c4( bes8) f'4 es8 | es4.( \f as-> g) f | es( as-> g) f|
   \mybreak
   es4 ^\< f8 ges2. \! a,8 gis a | bes4.( g'2. f4.) | es r4 r8 r4 r8 r4 bes8^\p|
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
   c,( des) d es | as,2.( ^\p ^\< c~ | c\> bes) | as1.~ \! | as8 r r r4 \fermata
   \bar ":|"
}

tenorTwo = \relative c' {
   \settings
%210
   c8 c c c  c c c | des2.~
   des2. | c4 r8 r4 c8 c c c  c c c |
%211
   des2.~( des4. g,) | as4 r8 r4 as8
   as as as  as as as | as4. as2. r4 r8 |
%212
   r4 r8 r4 r8 r4 r8 es'4. _\f | c c4 c8 ces4. _\> ces4 ces8 \! |
   bes4. bes4. r4 r8 ces4. _\mf | bes4 bes8 bes4 beses8 as4 as8 as4 as8|
%213
   as4. as4 _\< as8 as4. g4 g8 | es'4.( \f d2.-> ) d4. | es4.( d2.-> ) d4. |
   es4 _\< es8 es2. \! fis,8 fis fis | g4.( bes c d) | es r4 r8 r4 r8 r4 es8_\p|
%214
   f4( es8) f4 es8 f4( es8) f4 es8 | as,4.( c) des c |
   f4( es8) f4 es8 f4( es8) f4 es8 | as,4.( c) des c |
%215
   es2. c | des1. |
   b2. b | b~
%216
   b2. | b2.~ b4. b | c1.~ |
   c2.~ c4. c4. | es1.~( _\p _\< | es2.\> des) | c1.~ \! | c8 r r r4 \fermata
   \bar ":|"
}

bassOne = \relative as {
   \settings
%210
   as8 as as as a a a | bes4( as8) g4 r8
   r4 r8 r4 r8 | r4 r8 r4 as8 as as as a a a |
%211
   bes4( as8) g4 r8 r4 r8 r4 r8 | r4 r8 r4 es8
   es d es es d es | f4. es2. r4 r8 |
%212
   r4 r8 r4 r8 r4 r8 c'4.^\f | as as4 as8 as4.^\> as4 as8 \! |
   g4. g r4 r8 as4.^\mf | g4 g8 ges4 ges8 f4 f8 fes4 fes8 |
%213
   es4. es4 ^\< es8 f4. es4 es8 | es4.( ^\f f-> g) as | g( f-> g) as |
   g4 ^\< as8 a2. \! es8 es es | es4.( bes' a as) | g r4 r8 r4 r8 r4 g8 ^\p |
%214
   g2. bes4. bes | es,2. g4. as |
   g2. bes4. bes | es,2. ^\< g4. as |
%215
   bes4(\f a8) bes4 a8 bes4(a8) bes4 a8 | c4(bes8) a4 bes8 f4(g8) a4(bes8) |
   as4 g8 as4 g8 as4 g8 as4 g8 | as4 g8 as4 g8
%216
   as4 g8 as4 g8 | as4. as2. as4. | as1.~ |
   as2.~ as4. as | c2.( ^\p \< as | g1.) \> | es~ \! | es8 r8 r8 r4 \fermata
}

bassTwo = \relative es {
   \settings
%210
   r8 r4 r8 r4 r8 | r4 r8 r4 es8
   f g as g as bes | c4( as8) es4 r8 r4 r8 r4 r8 |
%211
   r4 r8 r4 es8 des' bes g es des bes | as4( c16[ es]) as4 r8
   r4 r8 r4 r8 | r4 r8 r4 r8 r4 r8 es4( as8) |
%212
   c4. des4 c8 bes4( as8) g4 f8 | es4( c8) as4 r8 r4 r8 r4 r8 |
   r4 r8 r4 r8 r4 r8 as'4. _\mf | g4 g8 ges4 ges8 f4 f8 fes4 fes8 |
%213
   % Ska det vara marcato efter forte:t?
   es4. es4 _\< es8 d4. des4 des8 | c4.( \f b2.) b4. | c4.( b2.->) c4. |
   c4 _\< c8 c2. \! ces8 ces ces | bes1. | es4. r4 es8 _\p f4( es8) f4 es8 |
%214
   % Ska det var dess eller dessess ?
   des4.( bes) g des' | c( as) bes c |
   des( bes) g des' | c( \< as) bes c |
%215
   c2. es | des1. |
   d2.\> es | f2.~
%216
   f | f~ f4. \! f | es1.~
   es2.~ es4. es | es1.~ _\p _\< | es \> | as,~ \! | as8 r r r4 \fermata
}

firstVerse = {
   \set stanza = "1."
   \lyricmode {
      Jeg kig -- ge på pi -- ge -- nes ska -- re,
      jeg spej -- der og spej -- der be -- stan -- dig,
      jeg spej -- der og spej -- der be -- stan -- dig;
      den skøn -- ne -- ste gad jeg nok ej -- e,
      den skøn -- ne -- ste, den skøn -- ne -- ste,
      den skøn -- ne -- ste, gad jeg nok ej -- e,
      ja den skøn -- ne -- ste, gad jeg nok ej -- e!
      Ak vid -- ste jeg blot, hvor hun fin -- des, ak
      vid -- ste jeg blot, hvor hun fin -- des, ak
      vid -- ste jeg, hvor hun fin -- des, __
      ak hvor __ hun fin -- des! __
   }
}


secondVerse = {
   \set stanza = "2."
   \lyricmode {
      Den e -- ne har ej -- ne så kla -- re,
      den an -- den har ro -- ser på kin -- den,
      den an -- den har ro -- ser på kin -- den,
      den tre -- die de sø -- de -- ste læ -- ber,
      de sø -- de -- ste, de sø -- de -- ste,
      de sø -- de -- ste, sø -- de -- ste læ -- ber,
      ja de sø -- de -- ste, sø -- de -- ste læ -- ber,
      den fjer -- de et glø -- den -- de hjer -- te,
      den fjer -- de et glø -- den -- de hjer -- te,
      den fjer -- de glø -- den -- de hjer -- te, __
      % TODO: fixa "den" på rätt plats!
      et glø1. dende hjer -- te! __
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
            \new Lyrics \lyricsto "tenorTwo" { \firstVerse }
            \new Lyrics \lyricsto "tenorTwo" { \secondVerse }
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

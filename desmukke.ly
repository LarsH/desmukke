\version "2.14.2"

#(set-global-staff-size 16)

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
   page-count = 8
%  left-margin = 45
   line-width = 160
   top-margin = 25
   bottom-margin = 25
%  systems-per-page = 3
   ragged-last-bottom = ##f
%  annotate-spacing = ##t
%  foot-separation = 7
}

mybreak = {
%\bar "" \break
}

settings = \relative c {
   \tempo "Allegretto leggiero" 4.=120
   \key as \major
   \time 12/8
%  \autoBeamOff
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
   \mybreak
   es4 f8 es4 f8) | es4 r8 r4 es8 \sg f es d es \sg f es d es |
   \mybreak

%211
   es2.~( es4. des4.) | c4 r8 r4 c8
   \mybreak
   \sg des c b c \sg des c b c | des4. c2. r4 r8 |
   \mybreak

%212
   r2. r4 r8 es4. ^\f | es4( as8) g4 f8 es4( ^\> d8) es4 f8 \! |
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
   bes,4. des2. g,4. | es'4( ^\< f8) es4 f8 es4( f8) es4 f8 |
   \mybreak

%215
   ges2.~ ges4. f | f1. |
   \mybreak
   f2. \> es | es~
   \mybreak

%216
   es2. | d2.~ d4. \! \tempo "Dolce" d | es( f) g as |
   \mybreak
   c,( des) d es | as,2.( ^\p ^\< c~ | c\> bes) | as1.~ \! | as8 r r r4 \fermata
   \mybreak
   \bar ":|"

%217
   es'8 ^\p \sg f es d es \sg f es d es | es2.~( es4 f8 es4 f8) |
   \mybreak
   es4 r8 r4 es8 \sg f es d es \sg f es d es | es2.~(
   \mybreak
   es4. des4.) | c4 r8 r4 c8
   \sg des c b c \sg des c b c | des4. c2. r4 r8 |
   \mybreak

%218
   r2. r4 r8 es4. ^\f | es4( as8) g4 f8 es4( ^\> d8) es4 f8 \! |
   \mybreak
   f4. es r4 r8 d4. ^\p | f4. es r4 d8 d es f | f4. es
   r2. | r2. r4 r8 es4.\p |
%219
   es4.(^\< f) g as \! |
   as ^\> g4 f8 f4. es4 es8 |
   es4.(^\< f) g as \! |
%220
   as4 ^\> g8 bes as f f4. es \! |
   es2.( \< f4. g | as c, des es | f2.) ^\> fes
   es~(^\p es4. f4 es8) | es r r r4 r8 r4 r8 r4 r8 |
%221
   r2. r4 r8 es4. |
   es4.( ^\< f) g \! as |
   as ^\> g4 f8 f4. \! es |
%222
   es4.( ^\< f) g \! as |
   as4 g8 ^\> bes as f f4. \! es |
   es( ^\< as2. g4. |
%223
   ges2. f4.) fes \> |
   es2.~( \p es4. f4 es8) |
   es r r r4 r8 r2. |
%224
   es8 \f \> es es es es es es es \! r r4 r8 |
   es \> es es es es es es es \! r r4 r8 |
   r2. r4 r8 es^\< es es  | ges2. \ff f8 r r r4 r8|
%225
   f2. es2. \> | es1. |
   d2.~ d4. d\f | es8 f g as es c as bes c des d f |
   es es r r4 r8 g g r r4 r8 | as1.(\p\< | as\f\> )\( |as,\) \pp\fermata |
   \bar "|."
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
   r2. r4 r8 es'4. _\f | c c4 c8 ces4. _\> ces4 ces8 \! |
   bes4. bes4. r4 r8 ces4. _\mf | bes4 bes8 bes4 beses8 as4 as8 as4 as8|
%213
   as4. as4 _\< as8 as4. g4 g8 | es'4.( \f d2.-> ) d4. | es4.( d2.-> ) d4. |
   es4 _\< es8 es2. \! fis,8 fis fis | g4.( bes c d) | es r4 r8 r4 r8 r4 es8_\p|
%214
   f4( es8) f4 es8 f4( es8) f4 es8 | as,4.( c) des c |
   f4( es8) f4 es8 f4( es8) f4 es8 | as,4.(_\< c) des c |
%215
   es2. c | des1. |
   b2. \>  b | b~
%216
   b2. | b2.~ b4. \! b | c1.~ |
   c2.~ c4. c4. | es1.~( _\p _\< | es2.\> des) | c1.~ \! | c8 r r r4 \fermata
   \bar ":|"

%217
   c8_\p c c c  c c c | des1.
   \mybreak
   c4 r8 r4 c8 c c c  c c c | des2.~(
   \mybreak
   des4. g,) | as4 r8 r4 as8 as as as  as as as |
   \pageBreak
%218
   as4. as2. r4 r8 | r2. r4 r8 es'4. _\f | c c4 c8
   \mybreak
   ces4. _\> ces4 ces8 \! | bes4. bes4. r4 r8
      ces4. _\p | bes4. bes r4 ces8 ces ces ces | bes4. bes
   \mybreak
   r2. | r4 r8 r4 des8 \pp des des des des des des |
   \mybreak
%219
   c c c c c c c c c c c c | \mybreak
   des des des des des des des des des des des des | \mybreak
   c c c c c c c c c c c c | \mybreak
%220
   des des des des des des des des des des des des | \mybreak
   c4.(\< es2.~ es4.~ | es as, bes c | des2.) \> as | \mybreak
   as(\p g) | as8 r r r4 r8 r2. | \mybreak
%221
   des8 _\pp des des des des des des des des des des des | \mybreak
   c c c c c c c c c c c c | \mybreak
   des des des des des des des des des des des des | \mybreak
%222
   c c c c c c c c c c c c | \mybreak
   des des des des des des des des des des des des | \mybreak
   c4.( es des2. | \mybreak
%223
   es2. des4.) as | \mybreak
   as2.( g) | \mybreak
   as8 r r es \< f g as bes c des d f | \mybreak
%224
   es \f \> es es d d des c c \! r r4 r8 | \mybreak
   es \> es es d d des c c \! r r4 r8 | \mybreak
   r2. es8[ \< f es] des[ es] des | c2. \ff des8 r r r4 r8|\mybreak
%225
   b2. b2. \> | b1. | \mybreak
   b2.~  b4. b\f | c8 c c c c c as bes c des d f | \break
   es es r r4 r8 des des r r4 r8 | c2.(\p\< es~ | es\f\> des) |c1.\pp\fermata |

}

bassOne = \relative as {
   \settings
%210
   as8 as as as a a a | bes4( as8) g4 r8
   r2. | r4 r8 r4 as8 as as as a a a |
%211
   bes4( as8) g4 r8 r2. | r4 r8 r4 es8
   es d es es d es | f4. es2. r4 r8 |
%212
   r2. r4 r8 c'4.^\f | as as4 as8 as4.^\> as4 as8 \! |
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
%217
   as8 ^\p as as as a a a | bes4( as8) g4 r8 r2. |
   r4 r8 r4 as8 as as as a a a | bes4( as8) g4 r8
   r2. | r4 r8 r4 es8 es d es es d es |
%218
   f4. es2. r4 r8 | r2. r4 r8 c'4.^\f | as as4 as8 as4.
   as4 \> as8 \! | g4. g r4 r8 as4.^\p | g g r4 as8 as as as | g4. g
   r2. | r4 r8 r4 bes8 \pp bes bes bes  bes bes bes
%219
   as as as  as as as  as as as  as as as |
   bes bes bes  bes bes bes  bes bes bes  bes bes bes |
   as as as  as as as  as as as  as as as |
%220
   bes bes bes  bes bes bes  bes bes bes  bes bes bes |
   as4.( ^\< es' d des | c as2. ges!4. | as2.)\> ces |
   bes4.( \p c des2.) | c8 r r  r4 r8  r2. |
%221
   bes8 ^\pp bes bes  bes bes bes  bes bes bes  bes bes bes |
   as as as  as as as  as as as  as as as |
   bes bes bes  bes bes bes  bes bes bes  bes bes bes |
%222
   as as as  as as as  as as as  as as as |
   bes bes bes  bes bes bes  bes bes bes  bes bes bes |
   as4.(\< c bes2. |
%223
   as4. beses as) ces \> |
   bes( \p c4. des2.) |
   c8 r r  r4 r8  r2. |
%224
   es,8^\f \> es es  f f g  as as \! r8  r4 r8 |
   es ^\> es es  f f g as as \! r r4 r8 |
   r2.  r4 r8  es8 ^\< es es | es2. \ff f8 r r r4 r8 |
%225
   as4( g8) as4 g8 as4( ^\> g8) as4 g8 | as4 g8 as4 g8 as4 g8 as4 g8 |
   as4. as2. as4. \f | as8 as as  as as as  as, bes c  des d f |
   es es r  r4 r8  es' es r  r4 r8 | es,2.(^\p \< ges~ | ges \f \> f) | es1.\pp \fermata |
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
%217
   r8 r4 r8 r4 r8 | r4 r8 r4 es'8 _\p f g as g as bes |
   c4( as8) es4 r8 r4 r8 r4 r8 | r4 r8 r4 es8
   des' bes g  es des bes | as4( c16[ es]) as4 r8  r4 r8  r4 r8 |
%218
   r4 r8  r4 r8  r4 r8  es4( _\f as8) | c4. des4 c8  bes4( as8)  g4 f8 |
   es4( c8) as4 r8      r4 r8 r4 r8 | r1. | r | r4 r8 r4 r8
   r4 r8 es'4. _\pp | es8 es es  es es es  es es es  es es es |
%219
   es es es  es es es  es es es  es es es |
   es es es  es es es  es es es  es es es |
   es es es  es es es  es es es  es es es |
%220
   es es es  es es es  es es es  es es es |
   as,4.(_\< c' b bes | as ges f es | des2.) \> d |
   es1. _\p | es8 r r  r4 es8 _\p es c'  bes as g f |
%221
   es8 es r  r4 r8  r4 r8  es'4. |
   es,  r4 r8  r4 r8  es4. |
   es8 es' es  des bes as  as4.  g |
%222
   as4 r8  es4 r8  r4 r8  es4. |
   es8 es' es  des bes as  as4.  g |
   as,8 as as  as' as as  bes, bes bes  bes' bes bes |
%223
   c, c c  c c c  des des des  d d d |
   es es es  es es es  es es es  es es es |
   es es r  r4 r8   r4 r8  r4 r8 |
%224
   r4 r8  r4  es8_\p es c'  bes as g f |
   es es r  r4 es8 es c' bes as g f |
   es[(_\< f es] des[ es des] c[ des c]) bes[( c]) bes | as2.\ff des8 r r r4 r8 |
% XXX
%225
   d2. es_\> | f1. |
   f2.~ f4. f\f | es8 es es  es es es  as, bes c  des d f |
   es es r  r4 r8  es es r  r4 r8  | as,1.~_\p\<|as\f\>|as\pp\fermata|
}

firstVerseTenorOne = {
   \set stanza = "1."
   \lyricmode {
      Jeg kig -- ger på pi -- ger -- nes ska -- re,
      jeg spej -- der og spej -- der be -- stan -- dig,
      jeg spej -- der og spej -- der be -- stan -- dig;
      den skøn -- ne -- ste gad jeg nok ej -- e,
      den skøn -- ne -- ste, den skøn -- ne -- ste,
      den skøn -- ne -- ste, gad jeg nok ej -- e,
      ja den skøn -- ne -- ste, gad jeg nok ej -- e!
      Ak vid -- ste ja vid -- ste jeg blot, hvor hun fin -- des, ak
      vid -- ste jeg blot, hvor hun fin -- des, ak
      hvor hun fin -- des, __
      ak vid -- ste jeg blot, hvor hun fin -- des! __
   }
}


secondVerseTenorOne = {
   \set stanza = "2."
   \lyricmode {
      Den e -- ne har øj -- ne så kla -- re,
      den an -- den har ro -- ser på kin -- den,
      den an -- den har ro -- ser på kin -- den,
      den tre -- die de sø -- de -- ste læ -- ber,
      de sø -- de -- ste, de sø -- de -- ste,
      de sø -- de -- ste, sø -- de -- ste læ -- ber,
      ja de sø -- de -- ste, sø -- de -- ste læ -- ber,
      den fjer -- de et glø -- den -- de, glø -- den -- de hjer -- te,
      et glø -- den -- de, glø -- den -- de hjer -- te,
      glø -- den -- de hjer -- te,
      den fjer -- de et glø -- den -- de hjer -- te! __
      % TODO: fixa "den" på rätt plats!
   }
}

endingTenorOne = \lyricmode {
   Der er ej den pi -- ge, der sav -- ner et no -- get,
   der fæng -- sler min tan -- ke,
   et no -- get, der fæng -- sler min tan -- ke.
   Jeg kan ej en e -- ne -- ste vra -- ge,
   jeg kan ej en e -- ne -- ste vra -- ge,
   o kun -- ne jeg
   kys -- se dem al -- le, o
   kun -- ne jeg
   kys -- se, kys -- se dem al -- le,
   al -- le,
   al -- le,
   o
   kun -- ne jeg
   kys -- se dem al -- le,

   kun -- ne jeg
   kys -- se, kys -- se dem al -- le,
   al -- le, al -- le,

   kun -- ne jeg kys -- se dem al -- le,
   kun -- ne jeg kys -- se dem al -- le,
   kys -- se dem al -- le,

   ak dem al -- le,
   o kun -- ne jeg kys -- se dem al -- le,
   ja kys -- se dem al -- le, al -- le al -- le!
}


firstVerseTenorTwo = {
%   \set stanza = "1."
   \lyricmode {
%     Jeg kig -- ger på pi -- ger -- nes ska -- re,
%     jeg spej -- der og spej -- der be -- stan -- dig,
%     jeg spej -- der og spej -- der be -- stan -- dig;
\repeat unfold 27 {\skip 1}
%      den skøn -- ne -- ste gad jeg nok ej -- e,
%      den skøn -- ne -- ste, den skøn -- ne -- ste,
%      den skøn -- ne -- ste, gad jeg nok ej -- e,
%      ja den skøn -- ne -- ste, gad jeg nok ej -- e!
\repeat unfold 36 {\skip 1}
      Ak vid -- ste jeg blot, hvor hun fin -- des, ak
      vid -- ste jeg blot, hvor hun fin -- des, ak
      vid -- ste jeg, hvor hun fin -- des, __
      ak hvor __ hun fin -- des!
   }
}


secondVerseTenorTwo = {
%   \set stanza = "2."
   \lyricmode {
%      Den e -- ne har øj -- ne så kla -- re,
%      den an -- den har ro -- ser på kin -- den,
%      den an -- den har ro -- ser på kin -- den,
\repeat unfold 27 {\skip 1}
%      den tre -- die de sø -- de -- ste læ -- ber,
%      de sø -- de -- ste, de sø -- de -- ste,
%      de sø -- de -- ste, sø -- de -- ste læ -- ber,
%      ja de sø -- de -- ste, sø -- de -- ste læ -- ber,
\repeat unfold 36 {\skip 1}
      den fjer -- de et glø -- den -- de hjer -- te,
      den fjer -- de et glø -- den -- de hjer -- te,
      den fjer -- de glø -- den -- de hjer -- te, __
      % TODO: fixa "den" på rätt plats!
      et glø1. dende hjer -- te! __
   }
}

endingTenorTwo = \lyricmode {
   % Tenor2
%   Der er ej den pi -- ge, der sav -- ner et no -- get,
%   der fæng -- sler min tan -- ke,
%   et no -- get, der fæng -- sler min tan -- ke.
\repeat unfold 27 {\skip 1}

%   Jeg kan ej en e -- ne -- ste vra -- ge,
%   jeg kan ej en e -- ne -- ste vra -- ge,
\repeat unfold 18 {\skip 1}

%   o kun -- ne jeg, kun -- ne jeg,
\repeat unfold 7 {\skip 1}

%   kun -- ne jeg kys -- se dem,
%   kun -- ne jeg kys -- se dem,
\repeat unfold 12 {\skip 1}

%   kun -- ne jeg kys -- se dem,
%   kun -- ne jeg kys -- se dem,
\repeat unfold 12 {\skip 1}

%  kun -- ne jeg kys -- se dem,
%  kun -- ne jeg kys -- se dem,
\repeat unfold 12 {\skip 1}

%  kun -- ne jeg kys -- se dem,
%  kun -- ne jeg kys -- se dem,
\repeat unfold 12 {\skip 1}

%   al -- le, al -- le,
\repeat unfold 4 {\skip 1}

%   kun -- ne jeg, kun -- ne jeg,
%   kun -- ne jeg, kun -- ne jeg,
\repeat unfold 12 {\skip 1}
%   kun -- ne jeg kys -- se dem,
%   kun -- ne jeg kys -- se dem,
\repeat unfold 12 {\skip 1}
%  kun -- ne jeg kys -- se dem,
%  kun -- ne jeg kys -- se dem,
\repeat unfold 12 {\skip 1}
%  kun -- ne jeg kys -- se dem,
%  kun -- ne jeg kys -- se dem,
\repeat unfold 12 {\skip 1}
%  kun -- ne jeg kys -- se dem,
%  kun -- ne jeg kys -- se dem,
\repeat unfold 12 {\skip 1}
   al -- le, al -- le,
   kun -- ne jeg kys -- se dem,
   kun -- ne jeg,
   kun -- ne jeg kys -- se dem al -- le,
   kun -- ne jeg kys -- se dem al -- le,
   al -- le, dem al -- le, ak dem
   %al -- le,
   %o kun -- ne jeg kys -- se dem al -- le,
   %ja kys -- se dem al -- le, al -- le, al -- le!
}

firstVerseBasOne = {
   \set stanza = "1."
   \lyricmode {
      Jeg kig -- ger på pi -- ger -- nes ska -- re,
      jeg spej -- der og spej -- der be -- stan -- dig,
      jeg spej -- der og spej -- der be -- stan -- dig;
      den skøn -- ne -- ste gad jeg nok ej -- e,
      den skøn -- ne -- ste, den skøn -- ne -- ste,
      den skøn -- ne -- ste, gad jeg nok ej -- e,
      ja den skøn -- ne -- ste, gad jeg nok ej -- e!
      Ak vid -- ste jeg blot, hvor hun fin -- des, ak
      vid -- ste jeg,
      vid -- ste jeg blot, hvor hun fin -- des, ak hvor hun
      fin -- des, hvor hun fin -- des, hvor hun fin -- des, hvor hun
      fin -- des, hvor hun fin -- des, ak hvor __
      hun fin -- des! __
   }
}


secondVerseBasOne = {
   \set stanza = "2."
   \lyricmode {
      Den e -- ne har øj -- ne så kla -- re,
      den an -- den har ro -- ser på kin -- den,
      den an -- den har ro -- ser på kin -- den,
      den tre -- die de sø -- de -- ste læ -- ber,
      de sø -- de -- ste, de sø -- de -- ste,
      de sø -- de -- ste, sø -- de -- ste læ -- ber,
      ja de sø -- de -- ste, sø -- de -- ste læ -- ber,
      den fjer -- de et glø -- den -- de,
      glø -- den -- de  hjer -- te, den
      fjer -- de et glø -- den -- de hjer -- te, et glø -- dende
      hjer -- te, ak et hjer -- te, ak et hjer -- te, ak et
      hjer -- te, ak et hjer -- te, et glø --
      dende hjer -- te! __
      }
}

endingBasOne = \lyricmode {
   Der er ej den pi -- ge, der sav -- ner et no -- get,
   der fæng -- sler min tan -- ke,
   et no -- get, der fæng -- sler min tan -- ke.
   Jeg kan ej en e -- ne -- ste vra -- ge,
   jeg kan ej en e -- ne -- ste vra -- ge,
   o kun -- ne jeg, kun -- ne jeg,
   kun -- ne jeg kys -- se dem,
   kun -- ne jeg kys -- se dem,
   kun -- ne jeg kys -- se dem,
   kun -- ne jeg kys -- se dem,
   kun -- ne jeg kys -- se dem,
   kun -- ne jeg kys -- se dem,
   kun -- ne jeg kys -- se dem,
   kun -- ne jeg kys -- se dem,
   al -- le, al -- le,
   kun -- ne jeg, kun -- ne jeg,
   kun -- ne jeg, kun -- ne jeg,
   kun -- ne jeg kys -- se dem,
   kun -- ne jeg kys -- se dem,
   kun -- ne jeg kys -- se dem,
   kun -- ne jeg kys -- se dem,
   kun -- ne jeg kys -- se dem,
   kun -- ne jeg kys -- se dem,
   kun -- ne jeg kys -- se dem,
   kun -- ne jeg kys -- se dem,
   %al -- le, al -- le,
\repeat unfold 4 {\skip 1}

   %kun -- ne jeg kys -- se dem al -- le,
   %kun -- ne jeg kys -- se dem al -- le,
\repeat unfold 16 {\skip 1}
   kys -- se dem al -- le,

   kun -- ne jeg kys -- se dem al -- le, ja dem al -- le, ja dem
   al -- le,

   o kun -- ne jeg kys -- se dem al -- le,
   ja kys -- se dem al -- le, al -- le, al -- le!
}


firstVerseBasTwo = {
   \set stanza = "1."
   \lyricmode {
      Jeg kig -- ger på pi -- ger -- nes ska -- re,
      jeg spej -- der og spej -- der be -- stan -- dig,
      den skøn -- ne -- ste gad jeg nok ej -- e,
      den skøn -- ne -- ste, den skøn -- ne -- ste,
      den skøn -- ne -- ste, gad jeg nok ej -- e,
      ja den skøn -- ne -- ste, gad jeg nok ej -- e!
      Ak vid -- ste jeg blot, __ hvor hun fin -- des, ak
      blot __ hvor hun fin -- des, ak
      vid -- ste jeg,
      hvor hun fin --
      des, __ ak hvor __
      hun fin -- des! __
   }
}


secondVerseBasTwo = {
   \set stanza = "2."
   \lyricmode {
      Den e -- ne har øj -- ne så kla -- re,
      den an -- den har ro -- ser på kin -- den,
      den tre -- die de sø -- de -- ste læ -- ber,
      de sø -- de -- ste, de sø -- de -- ste,
      de sø -- de -- ste, sø -- de -- ste læ -- ber,
      ja de sø -- de -- ste, sø -- de -- ste læ -- ber,
      den fjer -- de et
      glø- den -- de  hjer -- te, et
      glø -- den -- de hjer -- te, den
      fjer -- de glø --
      den -- de hjer --
      te, __ et glø --
      dende hjer -- te! __
      }
}
%XXX
endingBasTwo = \lyricmode {
   Der er ej den pi -- ge, der sav -- ner et no -- get,
   der fæng -- sler min tan -- ke,
   Jeg kan ej en e -- ne -- ste vra -- ge,
   o kun -- ne jeg, kun -- ne jeg,
   kun -- ne jeg, kun -- ne jeg,
   kun -- ne jeg kys -- se dem,
   kun -- ne jeg kys -- se dem,
   kun -- ne jeg kys -- se dem,
   kun -- ne jeg kys -- se dem,
   kun -- ne jeg kys -- se dem,
   kun -- ne jeg kys -- se dem,
   kun -- ne jeg kys -- se dem,
   kun -- ne jeg kys -- se dem,
   al -- le, al -- le,
   o kun -- ne jeg kys -- se dem al -- le,
   ak
   ja! o
   kun -- e jeg kys -- se dem al -- le,

   ak ja! o
   kun -- ne jeg kys -- se dem al -- le,
   kun -- ne jeg kys -- se dem, kun -- ne jeg kys -- se dem,

   kun -- ne jeg kys -- se dem, kun -- ne jeg kys -- se dem,
   kys -- se dem, kys -- se dem, kys -- se dem, kys -- se dem,
   al -- le,

   o kun -- ne jeg kys -- se dem
   al -- le, o kun -- ne jeg kys -- se dem
   al -- le dem al -- le,

   ak dem al --
   le, o kun -- ne jeg kys -- se dem al -- le,
   ja kys -- se dem al -- le, al -- le, al -- le!
}


%% Layout
\book{
   \score {
      \new ChoirStaff <<
         \new Staff <<
            \clef "G_8"
            \set Staff.instrumentName = "Tenor I"
            \new Voice = "tenorOne" {\tenorOne }
            \new Lyrics \lyricsto "tenorOne" { \firstVerseTenorOne
                                               \endingTenorOne}
            \new Lyrics \lyricsto "tenorOne" { \secondVerseTenorOne }
         >>
         \new Staff <<
            \clef "G_8"
            \set Staff.instrumentName = "Tenor II"
            \new Voice = "tenorTwo" {\tenorTwo }
            \new Lyrics \lyricsto "tenorTwo" { \firstVerseTenorTwo
                                               \endingTenorTwo}
            \new Lyrics \lyricsto "tenorTwo" { \secondVerseTenorTwo }
         >>

         \new Staff = bas <<
            \set Staff.instrumentName = "Bas I/II"
            \clef bass
            \new Voice = "bassOne" { \voiceOne \bassOne }
            \new Voice = "bassTwo" { \voiceTwo \bassTwo }
            \new Lyrics \lyricsto "bassTwo" {\firstVerseBasTwo \endingBasTwo}
            \new Lyrics \lyricsto "bassTwo" { \secondVerseBasTwo }
         >>
            \new Lyrics \with {alignAboveContext = bas} \lyricsto "bassOne" { \firstVerseBasOne \endingBasOne}
            \new Lyrics \with {alignAboveContext = bas} \lyricsto "bassOne" { \secondVerseBasOne }
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

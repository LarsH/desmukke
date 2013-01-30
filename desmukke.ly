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
%  \autoBeamOff
   \override TextSpanner #'(bound-details left text) = "rit."
}

tenorOne = \relative es' {
   \settings
   es8
   \bar "|."
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

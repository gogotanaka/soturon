% -*-latex-*-
%
% File: nodlabpa.sty
% Last edited: Mon Dec 7 04:10:32 1992 by Nodera (Nodera Takashi)
%
%
\input jnodreportw.sty\relax
%
\def\ps@myheadings{\let\@mkboth\@gobbletwo
\def\@oddhead{\hbox{}\rightmark\,\hrulefill\,
\rm\thepage}\def\@oddfoot{\hrulefill}\def\@evenhead{\rm \thepage\hfil\leftmark\hbox
{}}\def\@evenfoot{}\def\chaptermark##1{}%
\def\sectionmark##1{}\def\subsectionmark##1{}}
\def\@makechapterhead#1{\thispagestyle{empty}\pagestyle{myheadings}
 \vspace*{30pt}%\hrule height 2pt\vskip 20pt
{ \parindent 0pt \raggedright
 \ifnum \c@secnumdepth >\m@ne{ \Huge\bf \@chapapp}} \par
 \vskip 20pt \fi{ \Huge\bf #1}\par 
 \nobreak \vskip 40pt %\hrule height 2pt%
%\eject
\markright{{\bf \@chapapp\ #1} } }
\def\chapter{\clearpage \thispagestyle{plain} \global\@topnum\z@
\@afterindenttrue \secdef\@chapter\@schapter} 
\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
 \refstepcounter{chapter}
 \typeout{}
 \typeout{第 {\thechapter} 章  #2}
 \addcontentsline{toc}{chapter}{\protect
 \numberline{\thechapter}#1}\else
 \addcontentsline{toc}{chapter}{#1}\fi
 \chaptermark{#1}
 \addtocontents{lof}{\protect\addvspace{10pt}}
\addtocontents{lot}{\protect\addvspace{10pt}} \if@twocolumn
\@topnewpage[\@makechapterhead{#2}] 
 \else \@makechapterhead{#2}
 \@afterheading \fi}
\def\@schapter#1{\if@twocolumn \@topnewpage[\@makeschapterhead{#1}]
 \else \@makeschapterhead{#1} \thispagestyle{plain}\pagestyle{plain}
 \@afterheading\fi \typeout{}\typeout{#1}\markright{{\bf #1}}}
\newif\ifskipRoman\skipRomanfalse
\def\Roman#1{\pagenumbering{roman}\ifskipRoman\relax\else#1\fi
  \eject\setcounter{page}{0}\pagenumbering{arabic}}
% size
\topmargin=-0.5cm
\textheight=22cm
\textwidth=16cm
%\footskip=.5cm
\oddsidemargin=-0.1cm
\evensidemargin=-0.1cm
\parindent=1em
%%%%%%%%

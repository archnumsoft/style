% $Id$

% FIXME: (AL) Need to choose a license for this style, I suggest GFDL

% Basic setup
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ansarticle}
\LoadClass[twoside,a4paper]{article}

% Load packages
\RequirePackage{anslistings}
\RequirePackage[T1]{fontenc}
\RequirePackage{ae,aecompl}
\RequirePackage{hyperref}
\RequirePackage{listings}
\RequirePackage{fancyhdr}
\RequirePackage[noblocks]{authblk}
\RequirePackage{a4wide}

% Font selection
\RequirePackage{pxfonts}        % Palatino for running text and math
\renewcommand{\sfdefault}{pag}  % Avantgarde for sans serif (section headings)

% Section headings
\renewcommand{\section}{%
  \@startsection{section}{0}{0pt}{2ex}{1ex}{\large\bf\sffamily}}
\renewcommand{\subsection}{%
  \@startsection{subsection}{1}{0pt}{2ex}{1ex}{\bf\sffamily}}

% Paragraphs
\setlength{\parindent}{0pt}
\setlength{\parskip}{2ex}

% Running title and author
\let\@runningtitle\@empty
\let\@runningauthor\@empty
\newcommand{\runningtitle}[1]{\gdef\@runningtitle{#1}}
\newcommand{\runningauthor}[1]{\gdef\@runningauthor{#1}}

% Page headers and footers
% FIXME: (AL) Handle volume, number, year
\fancyhead[RO, LE]{\thepage}
\fancyhead[LO]{\@runningtitle}
\fancyhead[RE]{\@runningauthor}
\fancyfoot[RO, LE]{%
  \footnotesize Archive of Numerical Software, Volume XX, Number XX, 2011}
\fancyfoot[C]{}
\renewcommand{\headrulewidth}{0pt}
\pagestyle{fancy}

% Front matter
\renewcommand*{\title}[2][]{\gdef\s@title{#1}\gdef\@title{#2}}
\renewcommand{\Authfont}{\large\sffamily}
\renewcommand{\Affilfont}{\normalsize\sffamily}
\renewcommand{\maketitle}{

  % Footnote stuff
  \let\footnotesize\small
  \def\footnoterule{\vspace*{-3pt}\rule{.4\columnwidth}{.4pt}\vspace*{2.6pt}}
  \renewcommand\thefootnote{\sffamily\@fnsymbol\c@footnote}
  \let\footnote\thanks

  % Title
  \vskip 60\p@ % FIXME: (AL) What does this line do?
  \begin{center}
    {\LARGE \textsf{\textbf{\@title}} \par}
    \vskip 3em
    {\large \lineskip .75em \textsf{\@author} }
    \vskip 1.5em
    {\large \@date \par}
  \end{center}\par

  % Affiliation stuff
  \@thanks
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax

  % No headers/footers on front page
  \thispagestyle{empty}
}

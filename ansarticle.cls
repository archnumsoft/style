% $Id$
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ansarticle}
\LoadClass[twoside]{article}
\RequirePackage[T1]{fontenc}
\RequirePackage{ae,aecompl}
\RequirePackage{times,mathptm}
\RequirePackage{hyperref}
\RequirePackage{listings}
\RequirePackage{fancyhdr}
\RequirePackage[noblocks]{authblk}

% Front matter
\renewcommand*{\title}[2][]{\gdef\s@title{#1}\gdef\@title{#2}}
\renewcommand{\Authfont}{\large\sffamily}
\renewcommand{\Affilfont}{\normalsize\sffamily}
\renewcommand{\maketitle}{
  \let\footnotesize\small
  \def\footnoterule{\vspace*{-3pt}\rule{.4\columnwidth}{.4pt}\vspace*{2.6pt}}
  \renewcommand\thefootnote{\sffamily\@fnsymbol\c@footnote}
  \let \footnote \thanks
  \null\vfil
  \vskip 60\p@
  \begin{center}%
    {\LARGE \textsf{\textbf{\@title}} \par}%
    \vskip 3em%
    {\large
     \lineskip .75em%
        \textsf{\@author}
    }%
      \vskip 1.5em%
    {\large \@date \par}%       % Set date in \large size.
  \end{center}\par
  \@thanks
  \vfil\null  
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
}

% Paragraphs
\setlength{\parindent}{0pt}
\setlength{\parskip}{1ex plus 1ex minus .5ex}

% Section headings
\renewcommand{\section}{%
  \@startsection{section}{0}{0pt}{0pt}{10pt}{\large\bfseries\sffamily}}
\renewcommand{\subsection}{%
  \@startsection{subsection}{1}{0pt}{0pt}{10pt}{\bfseries\sffamily}}

% Page headers and footers



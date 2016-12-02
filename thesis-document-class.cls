%	----------------------------------------------------	%
% Based on the works of:					%
% Tony Beltramelli - www.tonybeltramelli.com	%
%	----------------------------------------------------	%

\ProvidesClass{thesis-document-class}[2015/06/11 v0.1 Master's thesis]
\LoadClass[12pt, oneside, letterpaper]{article}

\def\degree#1{\gdef\@degree{#1}}
\def\university#1{\gdef\@university{#1}}
\def\location#1{\gdef\@location{#1}}
\def\authorA#1{\gdef\@authorA{#1}}
\def\authorB#1{\gdef\@authorB{#1}}
\def\authorC#1{\gdef\@authorC{#1}}
\def\supervisor#1{\gdef\@supervisor{#1}}

\renewcommand{\maketitle}{
    \begin{titlepage}
        \begin{center}
            \setlength{\parskip}{0pt}
            
            \begin{flushright}
                \includegraphics[width=7cm]{img/ITU_logo}
            \end{flushright}
            
            \vspace*{15mm}
            
            {\Large {Master Thesis} \par}
            \vspace*{5mm}
            
            {\huge {\bfseries \@title} \par}
            
            \vspace*{15mm}
            
            {\large {\textit{Authors:}} \par}
            {\large {\@authorA} \par}
            {\large {\@authorB} \par}
            {\large {\@authorC} \par}
            
            \vspace*{5mm}
            
            {\large {\textit{Supervisor:}} \par}
            {\large {\@supervisor} \par}
            
            \vspace*{10mm}
            
            {\large \textsc{\@university} \\ \@location \par}
            
            \vspace*{10mm}
            
            {\large\it {\@degree} \par}
            
            \vspace*{5mm}
            
            {\large \@date \par}
        \end{center}
    \end{titlepage}
}

\newcommand{\toc}[1] {
	\thispagestyle{empty}
	\tableofcontents
	\thispagestyle{empty}
	\clearpage
	\setcounter{page}{#1}
}
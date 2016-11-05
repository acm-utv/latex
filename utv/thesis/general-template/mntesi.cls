\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mntesi}[2014/10/14 v1.0]
\LoadClass[11pt,a4paper,oneside,openright]{book}


%%%%% %%%%% %%%%% %%%%% %%%%% %%%%% %%%%% %%%%%
% -- Input and Language
%%%%% %%%%% %%%%% %%%%% %%%%% %%%%% %%%%% %%%%%  
\RequirePackage[utf8]{inputenc}
\RequirePackage[italian,english]{babel}

%%%%% %%%%% %%%%% %%%%% %%%%% %%%%% %%%%% %%%%% 
% -- Document Layout 
%%%%% %%%%% %%%%% %%%%% %%%%% %%%%% %%%%% %%%%% 
\RequirePackage{fancyhdr}
\RequirePackage{setspace} 	%interlinea
\RequirePackage[framemethod=TikZ]{mdframed}
\RequirePackage{xcolor}
\RequirePackage{hyperref}	% collegamenti ipertestuali
\RequirePackage{multirow}	% tabelle con celle multiriga
\RequirePackage{listings}  % listing of code 

%%%%% %%%%% %%%%% %%%%% %%%%% %%%%% %%%%% %%%%% 
% -- Figures and Graphics
%%%%% %%%%% %%%%% %%%%% %%%%% %%%%% %%%%% %%%%% 
\RequirePackage{graphicx}
\RequirePackage{float}
\RequirePackage{epstopdf}

%%%%% %%%%% %%%%% %%%%% %%%%% %%%%% %%%%% %%%%% 
% -- Math Symbols and Formulas 
%%%%% %%%%% %%%%% %%%%% %%%%% %%%%% %%%%% %%%%% 
\RequirePackage{amsmath}
\RequirePackage{amssymb} 



%%%%% %%%%% %%%%% %%%%% %%%%% %%%%% %%%%% %%%%% 
% -- General Settings 
%%%%% %%%%% %%%%% %%%%% %%%%% %%%%% %%%%% %%%%% 
\setlength{\parskip}{0.5em}

% -- hyperref 
\hypersetup{
    colorlinks,
    citecolor=black,
    filecolor=black,
    linkcolor=black,
    urlcolor=black
}

% -- listing
\lstset{ %
  backgroundcolor=\color{white},
  basicstyle=\footnotesize,        
  breaklines=true,
  captionpos=b,                    
%  commentstyle=\color{PineGreen},    % comment style
  escapeinside={\%*}{*)},          
% keywordstyle=\color{blue},       % keyword style
}


%%%%% %%%%% %%%%% %%%%% %%%%% %%%%% %%%%% %%%%% 
% --- Frontespizio
%%%%% %%%%% %%%%% %%%%% %%%%% %%%%% %%%%% %%%%% 
\def\anno#1{\gdef\@anno{#1}}
\def\autore#1{\gdef\@autore{#1}}
\def\matricola#1{\gdef\@matricola{#1}}
\def\relatore#1{\gdef\@relatore{#1}}
\def\pathlogo#1{\gdef\@pathlogo{#1}}
\def\laurea#1{\gdef\@laurea{#1}}

\def\@anno{}
\def\@autore{}
\def\@matricola{}
\def\@relatore{}
\def\@pathlogo{}
\def\@laurea{}

\newenvironment{wide}{%
  \begin{list}{}{%
      \setlength{\topsep}{0pt}%
      \addtolength{\leftmargin}{-4cm}%
      \addtolength{\rightmargin}{-3cm}%
      \addtolength{\textwidth}{4cm}%
      \setlength{\listparindent}{\parindent}%
      \setlength{\itemindent}{\parindent}%
      \setlength{\parsep}{\parskip}}%
  \item[]%
}{%
  \end{list}%
}

\def\frontespizio{

\begin{wide}
%	\newgeometry{left=3cm,right=3cm,top=5cm,bottom=2cm}
%	\marginparwidth=0pt
%	\marginparsep=0pt
	\thispagestyle{empty}
    \vspace*{-3cm}\parbox{0cm}{}
 
    \begin{center}
   
    		\Large{\textbf{Universit\`{a} degli Studi di Roma ``Tor Vergata''\\}}\vspace{.5cm}
        \begin{figure}[H]
        \begin{center}
        \includegraphics[height=2cm]{\@pathlogo}
        \end{center}
        \end{figure}
       \large{Macroarea di Ingegneria} \\ 
       \large{Laurea \@laurea ~in Ingegneria Informatica}\\ \vspace{2.5cm}
       \normalsize{\textbf{Tesi di Laurea \@laurea}}\\ \vspace{1cm}  
       {\huge \textbf{ \@title } \par}
       
%     		\hyphenpenalty=10000{\expandafter{\@title}}
	    \vfill
    		\vspace{2cm}
	    \begin{minipage}{0.4\textwidth}
	    \begin{flushleft} \large
			{\normalsize\textbf{Relatore}}\\
			{\Large \@relatore} 
		\end{flushleft}
		\end{minipage}
		\begin{minipage}{0.4\textwidth}
		\begin{flushright} \large
			{\normalsize\textbf{Candidato}} \\
			{\Large \@autore}
		\end{flushright}
		\end{minipage}


        \vspace{3cm}
        \large{Anno Accademico \@anno}
    \end{center}
    
    \end{wide}
    \newpage
 %   \restoregeometry
 }
 
 
%%%%% %%%%% %%%%% %%%%% %%%%% %%%%% %%%%% %%%%% 
% -- New Environments and Styles Definition
%%%%% %%%%% %%%%% %%%%% %%%%% %%%%% %%%%% %%%%% 
% -- Environments 
\newenvironment{dedica}% 
	{\thispagestyle{empty} \begin{flushright} \null \vspace{\stretch{1}}} %
	{\vspace{\stretch{2}} \null \end{flushright}}

\newenvironment{ringraziamenti}% 
	{\backmatter \newpage \thispagestyle{empty} \ \\ \newpage \chapter*{Ringraziamenti} } %
	{}
	
% -- Styles
\definecolor{dazzlingblue}{RGB}{0,107,182}
\definecolor{celosiaorange}{RGB}{244,125,68}
\definecolor{uncoatedred}{RGB}{169,68,66}
\definecolor{solidgreen}{RGB}{52,168,83}

\mdfdefinestyle{style-bluebox}{%
	linecolor=dazzlingblue,outerlinewidth=1pt,%
	frametitlerule=true,frametitlefont=\sffamily\bfseries\color{white},%
	frametitlerulewidth=1pt,frametitlerulecolor=dazzlingblue,%
	frametitlebackgroundcolor=dazzlingblue,
	backgroundcolor=blue!5,
	innertopmargin=\topskip,
	roundcorner=5pt
}
\mdfdefinestyle{style-orangebox}{%
	linecolor=celosiaorange,outerlinewidth=1pt,%
	frametitlerule=true,frametitlefont=\sffamily\bfseries\color{white},%
	frametitlerulewidth=1pt,frametitlerulecolor=celosiaorange,%
	frametitlebackgroundcolor=celosiaorange,
	backgroundcolor=red!5,
	innertopmargin=\topskip,
	roundcorner=5pt
}
\mdfdefinestyle{style-redbox}{%
	linecolor=uncoatedred,outerlinewidth=1pt,%
	frametitlerule=true,frametitlefont=\sffamily\bfseries\color{white},%
	frametitlerulewidth=1pt,frametitlerulecolor=uncoatedred,%
	frametitlebackgroundcolor=uncoatedred,
	backgroundcolor=red!5,
	innertopmargin=\topskip,
	roundcorner=5pt
}
\mdfdefinestyle{style-greenbox}{%
	linecolor=solidgreen,outerlinewidth=1pt,%
	frametitlerule=true,frametitlefont=\sffamily\bfseries\color{white},%
	frametitlerulewidth=1pt,frametitlerulecolor=solidgreen,%
	frametitlebackgroundcolor=solidgreen,
	backgroundcolor=green!5,
	innertopmargin=\topskip,
	roundcorner=5pt
}
\newmdenv[style=style-bluebox]{bbox}
\newmdenv[style=style-redbox]{rbox}
\newmdenv[style=style-orangebox]{obox}
\newmdenv[style=style-greenbox]{gbox}

% -- Definition of Box Environments
\newenvironment{blue-box}[1]
  {\begin{bbox}[frametitle=#1]}
  {\end{bbox}}
\newenvironment{orange-box}[1]
  {\begin{obox}[frametitle=#1]}
  {\end{obox}}
\newenvironment{red-box}[1]
  {\begin{rbox}[frametitle=#1]}
  {\end{rbox}}
\newenvironment{green-box}[1]
  {\begin{gbox}[frametitle=#1]}
  {\end{gbox}}
  
% -- Definition of Numbered Box Environments
\newcounter{blueboxctr}
\newenvironment{numbered-box}[1]
  {\begin{bbox}[frametitle=Riquadro~\theblueboxctr: #1]
   \refstepcounter{blueboxctr}
  }
  {\end{bbox}}
\numberwithin{blueboxctr}{chapter}

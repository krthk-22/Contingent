\ProvidesClass{Contingent Solutions}[2024/07/10 v1.0 Mathematics Club Problem Set Class]

\LoadClass[12pt]{article}

\RequirePackage{amsmath,amsthm,amssymb}
\RequirePackage{geometry,enumerate,xcolor,multicol}
\RequirePackage{graphicx}
\RequirePackage{fancyhdr,background}
\RequirePackage{mdframed}
\RequirePackage{color,soul}
\RequirePackage{tikz}
\RequirePackage{hyperref}
\hypersetup{colorlinks=true,linkcolor=blue,urlcolor=blue}
\geometry{
    a4paper,
    total={170mm,257mm},
    left=10mm,
    right=10mm,
    top=20mm,
}

% For easy coloring
\newcommand{\red}[1]{{\color{red}{#1}}}
\newcommand{\blue}[1]{{\color{blue}{#1}}}
\newcommand{\yellow}[1]{{\color{yellow}{#1}}}
\newcommand{\green}[1]{{\color{green}{#1}}}
\newcommand{\cyan}[1]{{\color{cyan}{#1}}}

% Define a command for the problem set number
\newcommand{\problemsetnumber}{}
\newcommand{\setproblemsetnumber}[1]{\renewcommand{\problemsetnumber}{#1}}
\newcommand{\Startdate}{}
\newcommand{\setstartdate}[1]{\renewcommand{\Startdate}{#1}}
\newcommand{\Enddate}{}
\newcommand{\setenddate}[1]{\renewcommand{\Enddate}{#1}}


% Initialize the topics list
\newcommand{\topicslist}{}

% Define a command to add a topic to the list
\newcommand{\addtopic}[1]{\g@addto@macro\topicslist{\item #1}}

% Define a command to print the list of topics
\newcommand{\printtopics}{
    \begin{itemize}
        \itemsep0em
        \topicslist
    \end{itemize}
}

% Define a command for the authors
\newcommand{\authorslist}{}

% Define a command to add an author to the list
\newcommand{\addauthor}[1]{\g@addto@macro\authorslist{\item #1}}

% Define a command to print the list of authors
\newcommand{\printauthors}{
    \begin{itemize}
        \itemsep0em
        \authorslist
    \end{itemize}
}

% Command to print topics and authors
\newcommand{\printtopicsandauthors}{
    \begin{multicols}{2}
    \begin{itemize}
        \item {\bf Topics focused: }
        \begin{minipage}[t]{\textwidth}
            \printtopics
        \end{minipage}
        \item {\bf Challengers: }
        \begin{minipage}[t]{\textwidth}
            \printauthors
        \end{minipage}
    \end{itemize}
    \end{multicols}
}

% Custom title page
\newcommand{\maketitlepage}{
    \begin{tikzpicture}[remember picture, overlay]
        \node[anchor=north west, xshift=10mm, yshift = -15mm ] at (current page.north west){\includegraphics[width=1.7cm]{Maths.png}}; %left logo
        \node[anchor=north east, xshift = -10mm, yshift = -15mm] at (current page.north east){\includegraphics[width=1.7cm]{CFI.png}}; %right logo
    \end{tikzpicture}
    \begin{center}
    \vspace{-1cm}
    {\Large {\bf Mathematics Club}}\\
    \bigskip
    {\Large {\bf Contingent Problem Set - \problemsetnumber}}\\
    \bigskip
    {\Large {\bf Solutions}}
    \bigskip
    \hrule
    \bigskip
    {\bf Challenge posed on: \Startdate} \hfill {\bf Challenge conquered by: \Enddate}
    \bigskip
    \hrule
    \end{center}
}

\pagestyle{fancy}
\fancyhf{}
\fancyhead[R]{Contingent PS-\problemsetnumber}
\fancyhead[L]{Mathematics Club}
\fancyfoot[C]{\thepage}
\renewcommand{\headrulewidth}{1pt}
\renewcommand{\footrulewidth}{1pt}

\backgroundsetup{
    scale=1, 
    angle=0, 
    opacity=0.5,
    contents={\includegraphics[scale=1.26]{background.png}}
}

% Define the problem environment
\newenvironment{problem}[1][Problem]{%
    \begin{mdframed}[backgroundcolor=cyan!10]
    \begin{trivlist}
    \item[\hskip \labelsep {\bfseries \blue{#1}}\hskip \labelsep]}{%
    \end{trivlist}
    \end{mdframed}
}

% Define the solution environment
\newenvironment{solution}[1][Solution]{%
    \begin{trivlist}
    \item[\hskip \labelsep {\bfseries \red{#1}}\hskip \labelsep]}{%
    \end{trivlist}}
\endinput


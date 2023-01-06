%% Inspiration: https://github.com/posquit0/Awesome-CV

%% Identification
\ProvidesClass{style}[should be description here]
\NeedsTeXFormat{LaTeX2e}

%% Class options
\DeclareOption*{
    \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

\RequirePackage{array}    % to make fixed length table
\RequirePackage{enumitem} % to handle list environment
\RequirePackage{ragged2e} % to handle text alignment
\RequirePackage{geometry} % to configure page layout
\RequirePackage{fancyhdr} % to make header & footer effeciently
\RequirePackage{xcolor}   % to manage colors
\RequirePackage{xifthen}  % to use \if-\then-\else statement
\RequirePackage{etoolbox} % to use a toolbox of programming tools
\RequirePackage{setspace} % to change line spacing in specific environment
\RequirePackage[quiet]{fontspec} % to manage fonts
\defaultfontfeatures{Ligatures=TeX} % to support LaTeX quoting style
\RequirePackage{unicode-math} % to manage math fonts
\RequirePackage[default,opentype]{sourcesanspro}
\RequirePackage[skins]{tcolorbox}
\RequirePackage{parskip}  % to deal a paragraphs
\RequirePackage[hidelinks,unicode]{hyperref} % to deal hyperlink

\usepackage{fontawesome5}
\hypersetup{
    pdftitle={},
    pdfauthor={},
    pdfsubject={},
    pdfkeywords={},
    colorlinks=true,
    urlcolor=awesome,
}

%% Page Layout
% Configure page margins with geometry
\geometry{left=2.0cm, top=1.5cm, right=2.0cm, bottom=2.0cm, footskip=.5cm}

%% Header & Footer
% Set offset to each header and footer
\fancyhfoffset{0em}
% Remove head rule
\renewcommand{\headrulewidth}{0pt}
% Clear all header & footer fields
\fancyhf{}
% Enable if you want to make header or footer using fancyhdr
\pagestyle{fancy}

%% Colors
% Gray-scale colors
\definecolor{white}{HTML}{FFFFFF}
\definecolor{black}{HTML}{000000}
\definecolor{darkgray}{HTML}{333333}
\definecolor{gray}{HTML}{5D5D5D}
\definecolor{lightgray}{HTML}{999999}
% Basic colors
\definecolor{green}{HTML}{C2E15F}
\definecolor{orange}{HTML}{FDA333}
\definecolor{purple}{HTML}{D3A4F9}
\definecolor{red}{HTML}{FB4485}
\definecolor{blue}{HTML}{6CE0F1}
% Text colors
\definecolor{darktext}{HTML}{414141}
\colorlet{text}{darkgray}
\colorlet{graytext}{gray}
\colorlet{lighttext}{lightgray}

%% Fonts
\newcommand*{\fontdir}[1][fonts/]{\def\@fontdir{#1}}
\fontdir

\newfontfamily\headerfont[
    Path=\@fontdir,
    UprightFont=*-Regular,
    ItalicFont=*-Italic,
    BoldFont=*-Bold,
    BoldItalicFont=*-BoldItalic,
]{Roboto}

\newfontfamily\headerfontlight[
    Path=\@fontdir,
    UprightFont=*-Thin,
    ItalicFont=*-ThinItalic,
    BoldFont=*-Medium,
    BoldItalicFont=*-MediumItalic,
]{Roboto}

\newcommand*{\bodyfont}{\sourcesanspro}
\newcommand*{\bodyfontlight}{\sourcesansprolight}

%% Styles
\newcommand*{\headerfirstnamestyle}[1]{
    {\fontsize{32pt}{1em}\headerfontlight\color{graytext} #1}
}
\newcommand*{\headerlastnamestyle}[1]{
    {\fontsize{32pt}{1em}\headerfont\bfseries\color{text} #1}
}
\newcommand*{\headerpositionstyle}[1]{
    {\fontsize{7.6pt}{1em}\bodyfont\scshape\color{awesome} #1}
}
\newcommand*{\headeraddressstyle}[1]{
    {\fontsize{8pt}{1em}\headerfont\itshape\color{lighttext} #1}
}
\newcommand*{\headersocialstyle}[1]{
    {\fontsize{8pt}{1em}\headerfont\color{text} #1}
}

% Section styles
\def\@sectioncolor#1{{\color{awesome}#1}}
\newcommand*{\sectionstyle}[1]{
    {\fontsize{16pt}{1em}\bodyfont\bfseries\color{text}\@sectioncolor #1}
}
\newcommand*{\subsectionstyle}[1]{
    {\fontsize{12pt}{1em}\bodyfont\scshape\textcolor{text}{#1}}
}
\newcommand*{\paragraphstyle}{
    \fontsize{9pt}{1em}\bodyfontlight\upshape\color{text}
}

% Entry styles
\newcommand*{\titleStyle}[1]{
    {\fontsize{11pt}{1em}\bodyfont\bfseries\color{darktext} #1}
}
\newcommand*{\positionStyle}[1]{
    {\fontsize{9pt}{1em}\bodyfont\scshape\color{graytext} #1}
}
\newcommand*{\dateStyle}[1]{
    {\fontsize{8pt}{1em}\bodyfontlight\color{graytext} #1}
}
\newcommand*{\descriptionStyle}[1]{
    {\fontsize{10pt}{1em}\bodyfontlight\upshape\color{text} #1}
}

% Skill styles
\newcommand*{\skillTypeStyle}[1]{
    {\fontsize{10pt}{1em}\bodyfont\bfseries\color{darktext} #1}
}
\newcommand*{\skillSetStyle}[1]{
    {\fontsize{10pt}{1em}\bodyfontlight\color{text} #1}
}

%% Link commands
\newcommand*{\githubLink}[1]{\faIcon{github}\headerIconSep \href{https://github.com/#1}{#1}}
\newcommand*{\telegramLink}[1]{\faIcon{telegram}\headerIconSep \href{https://t.me/#1}{#1}}

%% Size constants
% Header
\newcommand{\headerAfterNameSkip}{.4mm}
\newcommand{\headerAfterPositionSkip}{.4mm}
\newcommand{\headerAfterAddressSkip}{-.5mm}
\newcommand{\headerIconSep}{\space}
\newcommand{\headerSocialSep}{\quad\textbar\quad}
\newcommand{\headerAfterSocialSkip}{6mm}
% Others
\newcommand{\sectionTopSkip}{1mm}
\newcommand{\sectionContentTopSkip}{0.5mm}

%% Utilities
% Use to align an element of tabular table
\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

% Use to draw horizontal line with specific thickness
\def\vhrulefill#1{\leavevmode\leaders\hrule\@height#1\hfill \kern\z@}

%% Structures
% CV section \cvsection{<section-title>}
\newcommand{\cvsection}[1]{
    \vspace{\sectionTopSkip}
    \sectionstyle{#1}
    \phantomsection
    \color{gray}\vhrulefill{0.9pt}
    \vspace{\sectionTopSkip}
}

% CV section \cvsubsection{<subsection-title>}
\newcommand{\cvsubsection}[1]{
    \vspace{\sectionContentTopSkip}
    \vspace{-3mm}
    \subsectionstyle{#1}
    \phantomsection
}

\newenvironment{cventries}{\vspace{\sectionContentTopSkip}}{}

\newenvironment{cventry}{
    \vspace{-0.5mm}
    \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{2.5cm} L{\textwidth - 2.7cm}}
}{
    \end{tabular*}
}

\newenvironment{cvskills}{
    \vspace{\sectionContentTopSkip}
    \vspace{-2.0mm}
    \begin{center}
        \setlength\tabcolsep{1ex}
        \setlength{\extrarowheight}{0pt}
        \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} R{2.5cm} L{\textwidth - 2.5cm}}
}{
        \end{tabular*}
    \end{center}
}

\newenvironment{cvitems}{
    \vspace{-4.0mm}
    \begin{justify}
    \begin{itemize}[leftmargin=2ex, nosep, noitemsep]
        \setlength{\parskip}{0pt}
        \renewcommand{\labelitemi}{\bullet}
}{
    \end{itemize}
    \end{justify}
    \vspace{-4.0mm}
}

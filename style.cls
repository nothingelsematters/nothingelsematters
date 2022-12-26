% Inspiration: https://github.com/posquit0/Awesome-CV

%% Identification
\ProvidesClass{style}[2017/02/05 v1.6.1 Awesome Curriculum Vitae Class]
\NeedsTeXFormat{LaTeX2e}

%% Class options
% (need to be done before the external package loading, for example because
% we need \paperwidth, \paperheight and \@ptsize to be defined before loading
% geometry and fancyhdr)

% Options for draft or final
\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\DeclareOption{final}{\setlength\overfullrule{0pt}}
% Inherit options of article
\DeclareOption*{
    \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}


%% 3rd party packages
% Needed to make fixed length table
\RequirePackage{array}
% Needed to handle list environment
\RequirePackage{enumitem}
% Needed to handle text alignment
\RequirePackage{ragged2e}
% Needed to configure page layout
\RequirePackage{geometry}
% Needed to make header & footer effeciently
\RequirePackage{fancyhdr}
% Needed to manage colors
\RequirePackage{xcolor}
% Needed to use \ifxetex-\else-\fi statement
\RequirePackage{ifxetex}
% Needed to use \if-\then-\else statement
\RequirePackage{xifthen}
% Needed to use a toolbox of programming tools
\RequirePackage{etoolbox}
% Needed to change line spacing in specific environment
\RequirePackage{setspace}
% Needed to manage fonts
\RequirePackage[quiet]{fontspec}
% To support LaTeX quoting style
\defaultfontfeatures{Ligatures=TeX}
% Needed to manage math fonts
\RequirePackage{unicode-math}
% Needed to use icons from font-awesome
% (https://github.com/posquit0/latex-fontawesome)
\RequirePackage{fontawesome}
\RequirePackage[default,opentype]{sourcesanspro}
% Needed to deal a paragraphs
\RequirePackage{parskip}
% Needed to deal hyperlink
\RequirePackage[hidelinks,unicode]{hyperref}
\hypersetup{
  pdftitle={},
  pdfauthor={},
  pdfsubject={},
  pdfkeywords={},
  colorlinks=true,
  urlcolor=awesome,
}

%% Configure a directory location for fonts(default: 'fonts/')
\newcommand*{\fontdir}[1][fonts/]{\def\@fontdir{#1}}
\fontdir

%% Configuration for layout
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

%% Configuration for colors
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
% Awesome colors
\definecolor{awesome-emerald}{HTML}{00A388}
\definecolor{awesome-skyblue}{HTML}{0395DE}
\definecolor{awesome-red}{HTML}{DC3522}
\definecolor{awesome-pink}{HTML}{EF4089}
\definecolor{awesome-orange}{HTML}{FF6138}
\definecolor{awesome-nephritis}{HTML}{27AE60}
\definecolor{awesome-concrete}{HTML}{95A5A6}
\definecolor{awesome-darknight}{HTML}{131A28}
\colorlet{awesome}{awesome-red}

% Boolean value to switch section color highlighting
\newbool{acvSectionColorHighlight}
\setbool{acvSectionColorHighlight}{true}

% Awesome section color
\def\@sectioncolor#1#2#3{
  \ifbool{acvSectionColorHighlight}{{\color{awesome}#1#2#3}}{#1#2#3}
}

%% Configuration for fonts
% Set the FontAwesome font to be up-to-date.
% \newfontfamily\FA[Path=\@fontdir]{FontAwesome}
% Set font for header (default is Roboto)
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

\newcommand*{\footerfont}{\sourcesanspro}
\newcommand*{\bodyfont}{\sourcesanspro}
\newcommand*{\bodyfontlight}{\sourcesansprolight}

%% Configuration for styles
% Configure styles for each CV elements
% For fundamental structures
\newcommand*{\headerfirstnamestyle}[1]{{\fontsize{32pt}{1em}\headerfontlight\color{graytext} #1}}
\newcommand*{\headerlastnamestyle}[1]{{\fontsize{32pt}{1em}\headerfont\bfseries\color{text} #1}}
\newcommand*{\headerpositionstyle}[1]{{\fontsize{7.6pt}{1em}\bodyfont\scshape\color{awesome} #1}}
\newcommand*{\headeraddressstyle}[1]{{\fontsize{8pt}{1em}\headerfont\itshape\color{lighttext} #1}}
\newcommand*{\headersocialstyle}[1]{{\fontsize{8pt}{1em}\headerfont\color{text} #1}}
\newcommand*{\headerquotestyle}[1]{{\fontsize{9pt}{1em}\bodyfont\itshape\color{darktext} #1}}
\newcommand*{\sectionstyle}[1]{{\fontsize{16pt}{1em}\bodyfont\bfseries\color{text}\@sectioncolor #1}}
\newcommand*{\subsectionstyle}[1]{{\fontsize{12pt}{1em}\bodyfont\scshape\textcolor{text}{#1}}}
\newcommand*{\paragraphstyle}{\fontsize{9pt}{1em}\bodyfontlight\upshape\color{text}}

% For elements of entry
\newcommand*{\entrytitlestyle}[1]{{\fontsize{11pt}{1em}\bodyfont\bfseries\color{darktext} #1}}
\newcommand*{\entrypositionstyle}[1]{{\fontsize{9pt}{1em}\bodyfont\scshape\color{graytext} #1}}
\newcommand*{\entrydatestyle}[1]{{\fontsize{8pt}{1em}\bodyfontlight\color{graytext} #1}}
\newcommand*{\descriptionstyle}[1]{{\fontsize{10pt}{1em}\bodyfontlight\upshape\color{text} #1}}

% For elements of skill
\newcommand*{\skilltypestyle}[1]{{\fontsize{10pt}{1em}\bodyfont\bfseries\color{darktext} #1}}
\newcommand*{\skillsetstyle}[1]{{\fontsize{10pt}{1em}\bodyfontlight\color{text} #1}}

%% Commands for personal information
% Define writer's name
% Usage: \name{<firstname>}{<lastname>}
% Usage: \firstname{<firstname>}
% Usage: \lastname{<lastname>}
% Usage: \familyname{<familyname>}
\newcommand*{\name}[2]{\def\@firstname{#1}\def\@lastname{#2}}
\newcommand*{\firstname}[1]{\def\@firstname{#1}}
\newcommand*{\lastname}[1]{\def\@lastname{#1}}
\newcommand*{\familyname}[1]{\def\@lastname{#1}}
\def\@familyname{\@lastname}

\newcommand*{\address}[1]{\def\@address{#1}}
\newcommand*{\position}[1]{\def\@position{#1}}
\newcommand*{\mobile}[1]{\def\@mobile{#1}}
\newcommand*{\email}[1]{\def\@email{#1}}
\newcommand*{\github}[1]{\def\@github{#1}}
\newcommand*{\linkedin}[1]{\def\@linkedin{#1}}
\newcommand*{\twitter}[1]{\def\@twitter{#1}}
\newcommand*{\extrainfo}[1]{\def\@extrainfo{#1}}

\newcommand*{\githubLink}[1]{\faGithubSquare\acvHeaderIconSep \href{https://github.com/#1}{#1}}

%% Commands for extra

%% Define helper macros a user can change easily
% Header
\newcommand{\acvHeaderNameDelim}{\space}
\newcommand{\acvHeaderAfterNameSkip}{.4mm}
\newcommand{\acvHeaderAfterPositionSkip}{.4mm}
\newcommand{\acvHeaderAfterAddressSkip}{-.5mm}
\newcommand{\acvHeaderIconSep}{\space}
\newcommand{\acvHeaderSocialSep}{\quad\textbar\quad}
\newcommand{\acvHeaderAfterSocialSkip}{6mm}
% Others
\newcommand{\acvSectionTopSkip}{1mm}
\newcommand{\acvSectionContentTopSkip}{0.5mm}


%% Commands for utilities
% Use to align an element of tabular table
\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

% Use to draw horizontal line with specific thickness
\def\vhrulefill#1{\leavevmode\leaders\hrule\@height#1\hfill \kern\z@}

% Use to execute conditional statements by checking empty string
\newcommand*{\ifempty}[3]{\ifthenelse{\isempty{#1}}{#2}{#3}}

%% Commands for elements of CV structure

% Define a header for CV
% Usage: \makecvheader
\newcommand*{\makecvheader}[1][C]{
    \newlength{\headertextwidth}
    \setlength{\headertextwidth}{\textwidth}
    \begin{minipage}[c]{\headertextwidth}
        \ifthenelse{\equal{#1}{L}}{\raggedright}{\ifthenelse{\equal{#1}{R}}{\raggedleft}{\centering}}
        \headerfirstnamestyle{\@firstname}\headerlastnamestyle{{}\acvHeaderNameDelim\@lastname}
        \\[\acvHeaderAfterNameSkip]
        \ifthenelse{\isundefined{\@position}}{}{\headerpositionstyle{\@position\\[\acvHeaderAfterPositionSkip]}}
        \ifthenelse{\isundefined{\@address}}{}{\headeraddressstyle{\@address\\[\acvHeaderAfterAddressSkip]}}
        \headersocialstyle{
        \newbool{isstart}
        \setbool{isstart}{true}
        \ifthenelse{\isundefined{\@mobile}}{}
            {\faMobile\acvHeaderIconSep\@mobile \setbool{isstart}{false}}
        \ifthenelse{\isundefined{\@email}}{}
            {
                \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}
                \faEnvelope\acvHeaderIconSep\href{mailto:\@email}{\@email}
            }
        \ifthenelse{\isundefined{\@github}}{}
            {
                \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}
                \githubLink{\@github}
            }
        \ifthenelse{\isundefined{\@linkedin}}{}
            {
                \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}
                \faLinkedinSquare\acvHeaderIconSep \href{https://www.linkedin.com/in/\@linkedin}{\@linkedin}
            }
        \ifthenelse{\isundefined{\@twitter}}{}
            {
                \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}
                \faTwitter\acvHeaderIconSep \href{https://twitter.com/\@twitter}{\@twitter}
            }
        \ifthenelse{\isundefined{\@extrainfo}}{}
            {
                \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}
                \@extrainfo
            }
        } \\[\acvHeaderAfterSocialSkip]
    \end{minipage}
}

% Define a section for CV
% Usage: \cvsection{<section-title>}
\newcommand{\cvsection}[1]{
    \vspace{\acvSectionTopSkip}
    \sectionstyle{#1}
    \phantomsection
    \color{gray}\vhrulefill{0.9pt}
    \vspace{\acvSectionTopSkip}
}

% Define a subsection for CV
% Usage: \cvsubsection{<subsection-title>}
\newcommand{\cvsubsection}[1]{
    \vspace{\acvSectionContentTopSkip}
    \vspace{-3mm}
    \subsectionstyle{#1}
    \phantomsection
}

% Define a paragraph for CV
\newenvironment{cvparagraph}{
    \vspace{\acvSectionContentTopSkip}
    \vspace{-3mm}
    \paragraphstyle
}{
    \par
    \vspace{2mm}
}

% Define an environment for cventries
\newenvironment{cventries}{\vspace{\acvSectionContentTopSkip}}{}

% Define an environment for cventry
\newenvironment{cventry}{
    \vspace{-0.5mm}
    \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{2.5cm} L{\textwidth - 2.7cm}}
}{
    \end{tabular*}
}

% Define an environment for cvskill
\newenvironment{cvskills}{
    \vspace{\acvSectionContentTopSkip}
    \vspace{-2.0mm}
    \begin{center}
        \setlength\tabcolsep{1ex}
        \setlength{\extrarowheight}{0pt}
        \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} R{2.5cm} L{\textwidth - 2.5cm}}
}{
        \end{tabular*}
    \end{center}
}

% Define an environment for cvitems (for cventry)
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

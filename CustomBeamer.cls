\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{CustomBeamer}
\LoadClass[aspectratio=169, 11pt, xcolor={usenames,dvipsnames}]{beamer}

% Define colors
\definecolor{red}{rgb}{0.8, 0.0, 0.0}

% Set beamer color
\setbeamercolor{frametitle}{fg=white,bg=red}
\setbeamercolor{title}{fg=red}

% Load necessary packages
\usepackage{pgf}
\usepackage{tikz}
\usepackage{graphicx}


% Title page definition
\defbeamertemplate*{title page}{customized}[1][]{
    \begin{center}
        \vspace{2cm}
        {\usebeamerfont{title}\usebeamercolor[fg]{title}\inserttitle}\par
        \vspace{1cm}
        {\usebeamerfont{author}\insertauthor}\par
        \vspace{0.5cm}
        {\usebeamerfont{date}\insertdate}\par
        \vspace{0.5cm}
        {\usebeamerfont{institute}\insertinstitute}
    \end{center}
}

% Red frame title
\setbeamertemplate{frametitle}{
    \nointerlineskip
    \begin{beamercolorbox}[wd=\paperwidth,ht=2.5ex,dp=1.125ex,leftskip=0.3cm,rightskip=0.3cm]{frametitle}
        \usebeamerfont{frametitle}\insertframetitle
    \end{beamercolorbox}
}

% 设置页脚，包括页码
\setbeamertemplate{footline}{
    \leavevmode%
    \hbox{%
        \begin{beamercolorbox}[wd=\paperwidth,ht=2.25ex,dp=1ex,right]{author in head/foot}%
            \insertframenumber{} / \inserttotalframenumber\hspace*{2ex}
        \end{beamercolorbox}%
    }%
    \vskip0pt%
}


% Logo in the bottom right corner
\setbeamertemplate{footline}{
    \leavevmode%
    \hbox{%
        \begin{beamercolorbox}[wd=0.8\paperwidth,ht=2.25ex,dp=1ex,leftskip=0.3cm]{author in head/foot}%
            \usebeamerfont{author in head/foot}%\insertshortauthor \hspace{1em} \insertshorttitle
            \ifnum\insertframenumber>1
            \insertframenumber{} / \inserttotalframenumber\hspace*{2ex}
            \fi
        \end{beamercolorbox}%
        \begin{beamercolorbox}[wd=0.2\paperwidth,ht=2.25ex,dp=1ex,center]{author in head/foot}%
            \includegraphics[height=.6cm]{logo.png}
        \end{beamercolorbox}%
        % \begin{beamercolorbox}[wd=\paperwidth,ht=2.25ex,dp=1ex,right]{author in head/foot}%
        %     \insertframenumber{} / \inserttotalframenumber\hspace*{2ex}
        % \end{beamercolorbox}%
    }%
    \vskip0pt%
}

% % Logo in the bottom right corner
% \setbeamertemplate{footline}{
%     \leavevmode%
%     \hbox{%
%         \begin{beamercolorbox}[wd=0.8\paperwidth,ht=2.25ex,dp=1ex,leftskip=0.3cm]{author in head/foot}%
%             \usebeamerfont{author in head/foot}\insertshortauthor \hspace{1em} \insertshorttitle
%         \end{beamercolorbox}%
%     }%
%     \begin{tikzpicture}[remember picture,overlay]
%         \node[anchor=south east, xshift=-0.cm, yshift=0.cm] at (current page.south east) {
%             \includegraphics[height=1cm]{logo.png}
%         };
%     \end{tikzpicture}%
%     \vskip0pt%
% }




% Remove navigation symbols
\setbeamertemplate{navigation symbols}{}

% Example block
\setbeamertemplate{blocks}[rounded][shadow=true]
\setbeamercolor{block body}{fg=black,bg=red!20}
\setbeamercolor{block title}{fg=white,bg=red}

% Customized cover page
\newcommand{\coverpage}[1]{
    \begin{frame}[plain]
        \vfill
        \begin{center}
            \includegraphics[width=0.4\textwidth]{logo.png}
        \end{center}
        \vfill
        \begin{center}
            \Huge\textbf{#1}
        \end{center}
        \vfill
    \end{frame}
}

% Define custom section page
\newcommand{\sectionpage}[1]{
    \begin{frame}[plain]
        \vfill
        \begin{center}
            {\usebeamercolor[fg]{title}\Huge\textbf{#1}}
        \end{center}
        \vfill
    \end{frame}
}

% Additional settings
\setbeamertemplate{itemize items}[circle]
\setbeamertemplate{enumerate items}[default]

\endinput

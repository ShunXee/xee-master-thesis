\NeedsTeXFormat{LaTeX2e}[2007/10/19]
\ProvidesClass{szu-master}
[2024/04/01 v1 Thesis Template for SZU Postgraduate]
\LoadClass[cs4size,12pt,a4paper,fntef,UTF8,fontset=none]{ctexart}[2024/4/1]
% 源代码地址： https://github.com/Ftine/SZU_Latex_Master_Template 

\RequirePackage{amsmath,amsthm,amsfonts,amssymb,bm,times,fancyhdr}
\RequirePackage{epigraph, titlesec, textcomp}
\RequirePackage{hyperref,caption,titletoc}

\DeclareCaptionFont{wuhao}{\zihao{5}}
%\DeclareCaptionFont{bfseries}{\bfseries}
\newcommand{\xiaowu}{\zihao{-5}}
\newcommand{\xiaochu}{\fontsize{0}{0}\selectfont}

\CTEXdigits{\mynumber}{2024}


% % 设置表格标题格式
%\captionsetup[table]{labelfont=bfseries, font=bf}
% 设置图形标题格式
% 设置表格标题格式 加粗 字体大小
\captionsetup{font={bf, wuhao}}

\renewcommand{\thefigure}{\arabic{figure}}	%图表的计数方式
\renewcommand{\thetable}{\arabic{table}}   %图表的计数方式


\renewcommand{\contentsname}{{\heiti\zihao{3}\textbf{目~录}\vspace{1\baselineskip}}}

\renewcommand\refname{{\heiti\zihao{-3}\textbf{参~考~文~献}}}



%上标方式
\makeatletter
\def\@cite#1#2{\textsuperscript{[{#1\if@tempswa , #2\fi}]}}
\makeatother


\newcommand{\titleCN}[1][~]{#1}
\newcommand{\titleEN}[1][~]{#1}
\newcommand{\newContects}{section}


% 全局英文字体
\setmainfont{Times New Roman}
\newfontfamily\tnr{Times New Roman}
\newfontfamily\arialfont{Arial}
% 正文中文字体
\setCJKmainfont{simsun.ttc}[Path=fonts/, UprightFont=*]
% 正文走宋体，标题类按规范使用黑体
\newCJKfontfamily\songti{simsun.ttc}[Path=fonts/, UprightFont=*]
\newCJKfontfamily\heiti[Path=/System/Library/Fonts/]{STHeiti Medium.ttc}
\newCJKfontfamily\songtibold{songti-bold.otf}[Path=fonts/, UprightFont=*]
%设置页眉的横线
\renewcommand{\headrule}{%
    \hrule width\headwidth height1.5pt % 粗直线
    \vspace{1pt} % 1pt的空白间隔
    \hrule width\headwidth height0.75pt % 细直线
}


%设置标题编号深度
\setcounter{secnumdepth}{4}
%设置目录树显示深度
\setcounter{tocdepth}{3}



% 自定义小节标题编号的样式
%\renewcommand{\thesubsection}{\arabic{section}.\arabic{subsection}} % 编号字体设置为黑体




%图标目录设置 没使用
\titlecontents{figure}[0em]{\zihao{4}}{图~\thecontentslabel\hspace{1em}}{}{\titlerule*{$\cdot$}\contentspage}

\titlecontents{table}[0em]{\zihao{4}}{表~\thecontentslabel\hspace{1em}}{}{\titlerule*{$\cdot$}\contentspage}

%目录样式
\let\savedtableofcontents\tableofcontents

%//相关设置
\renewcommand{\tableofcontents}{%
	\pagestyle{plain}
	\begingroup
	\setstretch{1}
	\savedtableofcontents
	\endgroup
	%将有关正文页面的设置移到缩略语插入后
}

%参考文献样式

\let\savedbibliographystyle\bibliographystyle
\renewcommand{\bibliographystyle}[1]{
	\newpage
        %中文字体
        \phantomsection % 添加超链接的目标位置
	\hypertarget{references}{}     % 设置超链接的目标位置
        \setstretch{1.25}
        \addcontentsline{toc}{\newContects}{参考文献}
        \songti\zihao{5}
        \savedbibliographystyle{#1}
}


%中文摘要
\newenvironment{abstractCN}{
	\newpage
    \pagenumbering{Roman}
	\thispagestyle{fancy}
		\fancyhead[C]{{\songti\zihao{5}\titleCN}}
		\fancyfoot[C]{{\tnr\zihao{5}\thepage}}
        % 让加入的目录带超链接	
        \phantomsection % 添加超链接的目标位置
	\hypertarget{abstractCN}{} % 设置超链接的目标位置
		\addcontentsline{toc}{\newContects}{摘~要}
	\vspace{1\baselineskip}
	\begin{center}
        % {\heiti\zihao{3}
			{\heiti\zihao{3}\textbf{~\\}}
			{\heiti\zihao{3}\textbf{摘~~要}}
	\end{center}
	\vspace{1\baselineskip}
	\songti\zihao{-4}
}{}

%中文关键词
\newenvironment{keywordCN}{
	        \fancyhead[C]{{\songti\zihao{5}\titleCN}}
		\fancyfoot[C]{{\tnr\zihao{5}\thepage}}
        \vspace{2\baselineskip}	%空两行
	\songti\zihao{-4}
        \thispagestyle{fancy}
	\noindent{{\heiti\zihao{-4}\textbf{关键词：}}}
 }
{\newpage}

%英文摘要
\newenvironment{abstractEN}{
	\newpage
	\thispagestyle{fancy}
		\fancyhead[C]{{\tnr\zihao{5}\titleEN}}
		\fancyfoot[C]{{\tnr\zihao{5}\thepage}}
 
    \phantomsection % 添加超链接的目标位置
	\hypertarget{abstractEN}{} % 设置超链接的目标位置
	%\addcontentsline{toc}{\newContects}{\textbf{ABSTRACT}} %\zihao{-4}% 在目录中显示摘要
		\addcontentsline{toc}{\newContects}{ABSTRACT}
		\vspace{1\baselineskip}	
			\begin{center}
				{\songti\zihao{3}\textbf{~\\}}
				{{\arialfont\zihao{3}\textbf{ABSTRACT}}}
			\end{center}
		\vspace{1\baselineskip}
		\tnr\zihao{-4}
}{}

%英文关键词
\newenvironment{keywordEN}{
	\fancyhead[C]{{\tnr\zihao{5}\titleEN}}
	\fancyfoot[C]{{\tnr\zihao{5}\thepage}}
	\vspace{2\baselineskip}	%空两行
	\tnr\zihao{-4}
    \thispagestyle{fancy}
	\noindent{{\tnr\zihao{-4}\textbf{Key words: }}}
 }
{\newpage}

% 定义符号和缩略语说明
\newenvironment{signAndABC}{
	\newpage
	% \thispagestyle{fancy}
	%含有this样式仅当前页，表格跨页后页眉消失，改为去掉this后续页页眉正常显示
	\pagestyle{fancy}
		\fancyhead[C]{{\songti\zihao{5}符号和缩略语说明}}
		\fancyfoot[C]{{\tnr\zihao{5}\thepage}}
     \phantomsection % 添加超链接的目标位置
	\hypertarget{signAndABC}{} % 设置超链接的目标位置
		\addcontentsline{toc}{\newContects}{符号和缩略语说明}
	\vspace{1\baselineskip}	
		\begin{center}
			{\songti\zihao{3}\textbf{~\\}}
			{\heiti\zihao{3}\textbf{符号和缩略语说明}}	
		\end{center}
	\vspace{1\baselineskip}
	\songti\zihao{-4}
}{\newpage}


%定义附录环境  致谢
\newenvironment{szuAppendix}[1]{
	\newpage
       \phantomsection % 添加超链接的目标位置
	\hypertarget{szuAppendix}{} % 设置超链接的目标位置
	\addcontentsline{toc}{\newContects}{致~谢}
	\vspace*{24pt}
	\begin{center}
	        {\heiti\bfseries\zihao{3}#1}
	\end{center}
	\vspace{18pt}
	\songti\zihao{-4}
	\setlength{\baselineskip}{23pt}
}{}



%定义附录环境  攻读硕士学位期间研究成果
\newenvironment{szuAppendixB}[1]{

	\newpage 
    \thispagestyle{fancy}
		\fancyhead[C]{{\songti\zihao{5}#1}}
		\fancyfoot[C]{{\tnr\zihao{5}\thepage}}
      \phantomsection % 添加超链接的目标位置
	\hypertarget{szuAppendixB}{} % 设置超链接的目标位置
	\addcontentsline{toc}{\newContects}{#1}
		\vspace*{24pt}
		\begin{center}
	        {\heiti\bfseries\zihao{3}#1}
		\end{center}
		\vspace{18pt}
		\songti\zihao{-4}
		\setlength{\baselineskip}{23pt}
}{}




% 在导言区定义新字体族
\newfontfamily\sectionef{Arial}

\ctexset{
		section={
				format+ = \centering\heiti\bfseries\zihao{3},
				name = {第,章},
				number = \chinese{section},
				beforeskip = 24pt,
				afterskip = 18pt
		}
}	


\titleformat{\subsection}{\zihao{-3}\heiti\bfseries}{\thesubsection}{1em}{}
\titlespacing*{\subsection}{0pt}{24pt}{6pt}

\newfontfamily\sectiontitlefont{songti-bold.otf}[Path=fonts/, UprightFont=*]

\titleformat{\subsubsection}{\zihao{4}\songtibold}{\thesubsubsection}{1em}{}
\titlespacing*{\subsubsection}{0pt}{12pt}{6pt}

%定义四级标题样式
\titleformat{\paragraph}[hang]{\zihao{-4}\songtibold}{\theparagraph}{1em}{}
\titlespacing*{\paragraph}{0pt}{12pt}{6pt}

% 定义目录标题样式
\titlecontents{section}[0em]{\songti\bfseries\zihao{-4}\setlength{\baselineskip}{20pt}}{\contentspush{\thecontentslabel\hspace{1em}}}{}{\titlerule*[0.4pc]{.}\contentspage}[\vspace{0pt}]%

%\titlecontents{section}[0em]{\bfseries\zihao{-4}}{\contentspush{\thecontentslabel\hspace{1em}}}{}{\titlerule*[0.4pc]{.}\contentspage\vspace{1.6pt}}%

\titlecontents{subsection}[1em]{\songti\zihao{-4}\setlength{\baselineskip}{20pt}}{{\thecontentslabel}\hspace{1em}}{}{\titlerule*[0.4pc]{.}\contentspage}[\vspace{0pt}]

\titlecontents{subsubsection}[2em]{\songti\zihao{-4}\setlength{\baselineskip}{20pt}}{\thecontentslabel\hspace{1em}}{}{\titlerule*[0.4pc]{.}\contentspage}[\vspace{0pt}]



\endinput

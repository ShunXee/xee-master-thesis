# SZU Master Thesis LaTeX Template

这是一个基于上游仓库继续整理和维护的深圳大学硕士学位论文 LaTeX 模板。当前版本已经按新的目录结构重组，并围绕 2024 年学校格式规范做了可用性和版式收敛。

本仓库定位：

- 论文主入口为 `main.tex`
- 编译方式固定为 `XeLaTeX`
- 根目录尽量只保留入口和项目说明
- 模板文件、字体、参考文献、正文、官方文档分目录管理

## 当前目录结构

```text
.
├── main.tex
├── README.md
├── LICENSE
├── .gitignore
├── .latexmkrc
├── bib/
│   └── ref-paper.bib
├── chapters/
│   ├── abstract.tex
│   ├── sign-and-abc.tex
│   ├── cp-1.tex ... cp-5.tex
│   ├── thanks.tex
│   ├── my-papers.tex
│   └── master-page.pdf
├── docs/
│   └── official-docs/
├── figure/
├── fonts/
│   ├── simsun.ttc
│   └── songti-bold.otf
├── tables/
│   └── exp.tex
└── template/
    ├── szu-master.cls
    ├── bib-spacing.sty
    ├── gbt7714.sty
    ├── gbt7714-2005.bst
    ├── gbt7714-2015.bst
    ├── gbt7714-numerical.bst
    └── slashbox.sty
```

## 编译方法

推荐直接在项目根目录运行：

```bash
latexmk main.tex
```

如果不使用 `latexmk`，可以手动运行：

```bash
xelatex main.tex
bibtex main
xelatex main.tex
xelatex main.tex
```

说明：

- 编译器必须使用 `XeLaTeX`
- 本仓库自带 `.latexmkrc`，会自动补齐 `template/` 和 `bib/` 的搜索路径
- 当前参考文献样式默认使用 `GB/T 7714-2005`

## 你通常需要修改哪些文件

- `main.tex`
  - 论文标题
  - 编译入口顺序
  - 页眉页脚和参考文献调用
- `chapters/abstract.tex`
  - 中英文摘要与关键词
- `chapters/cp-1.tex` ... `chapters/cp-5.tex`
  - 正文各章节
- `chapters/thanks.tex`
  - 致谢
- `chapters/my-papers.tex`
  - 攻读硕士学位期间的科研成果
- `bib/ref-paper.bib`
  - 文献条目
- `chapters/master-page.pdf`
  - 封面 PDF

## 格式说明

当前版本主要按以下材料收敛：

- `docs/official-docs/2024119355662深圳大学研究生学位论文基本要求及格式规范（2024年1月）.pdf`

目前状态：

- 中文摘要、英文摘要、页眉页脚、正文层级、致谢、科研成果页已经做过一轮格式收敛
- 参考文献样式当前切回 `GB/T 7714-2005`
- 对学校规范来说，这意味着正文整体观感已较接近，但参考文献标准版本与 2024 规范文件并不完全一致

## 与上游的关系

这个版本是基于上游仓库 fork 后继续整理得到的版本，主要工作包括：

- 目录重组
- 文件命名统一
- 清理无效和历史遗留文件
- 调整字体映射和类文件
- 修复本地编译链
- 按官方 PDF 做一轮格式检查与收敛

上游项目与历史贡献信息保留在下方，作为历史记录。

## 历史记录

以下内容保留原 README 文本，仅作为历史记录，不代表当前目录结构或当前默认配置。

---

## SZU 2026最新版Latex硕士论文正文模板

> 模板源文件来自深圳大学计算机与软件学院历年流传下的模板内容进行修改，
> 
> 最初根据学校 2024 年最新模板修改编辑完成，
>
> 在所有用户的帮助下持续迭代。

- 致谢部分字体解决生僻字问题 https://github.com/Cao-Wuhui/SZU_Latex_Master_Template/issues/19 （2026.1.13）
- 增加 4 级标题 https://github.com/Cao-Wuhui/SZU_Latex_Master_Template/issues/14#issue-3737724452 （2025.12.21）
- 完成研究成果更改（2025.12.20）
- 完成摘要更改
- 完成目录更改
- 完成页眉更改
- 完成标题格式更改
- 完成文本格式更改
- 完成致谢和研究成果更改
- 完成参考文献格式更改

### 2025-11-11 更新 本仓库接手持续维护

由于上游已经停止维护，本仓库将接手，欢迎提交 issue 和 PR。

本项目保留了先前贡献者的提交记录，感谢[上游项目](https://github.com/Ftine/SZU_Latex_Master_Template)的贡献。

### 使用教程

下载该文件 zip 导入到相关的 latex 编辑工具即可，推荐使用 Overleaf，请注意更改编译器为 `XeLaTeX`。

### 删除内容

本项目删除了原始封面标题+相关承诺的 2 页，请直接使用来自 SZU 官方的最新模板页【生成PDF文件然后导入到论文首页】

### 不足

每一章节中，大标题上下留白的大小与学校模板稍有区别

### 贡献指南

本项目供深圳大学和兄弟学校免费试用。如发现任何问题，请提交 issue 反馈。如果已经有解决方案，可以提交 PR 贡献源代码。欢迎电子邮件联系：caoyixuan2019@email.szu.edu.cn。

### 旧仓库更新信息：
------
### 2024-5-23 更新 目录增加附录格式表达

> 在 `main.tex` 主文件中的 `\end{document}` 之前插入（即，末尾）。注意：后续插入相关的 PDF 文件也应该放在这个 `\end{document}` 之前。
>```tex
>% 在目录中添加一段文本
>\addtocontents{toc}{\noindent 附：指导教师对研究生学位论文的学术评语\par}
>\addtocontents{toc}{答辩委员会决议书\par}
>```

### 2024-4-1重大更新 对标题和目录字体进行修改

### <u>部分更新说明</u> ---仅保留部分重要问题 

- 标题字体修改，感谢@**[yupence](https://github.com/yupence)** 的 `Issue 14` 中[解决目录和标题字体为新罗马字体，不为宋体、黑体和英文的Arial的格式 · Issue #14 · Ftine/SZU_Latex_Master_Template (github.com)](https://github.com/Ftine/SZU_Latex_Master_Template/issues/14)分享

- **中文硕士博士论文**引用格式，感谢@**[disturb-yy](https://github.com/disturb-yy)** 的分享

>硕士格式引用 和 博士格式引用基本一致。
>
>博士格式：
>[@PhDThesis](https://github.com/PhDThesis){zhu1996,
>title={新型流体有限元法及叶轮机械正反混合问题},
>author={朱刚},
>school={清华大学},
>address={北京},
>year={1996},
>}
>
>硕士：
>[@MasterThesis](https://github.com/MasterThesis){zhu1996,
>title={新型流体有限元法及叶轮机械正反混合问题},
>author={朱刚},
>school={清华大学},
>address={北京},
>year={1996},
>}

- **脚注问题** 已参考 https://github.com/Ftine/SZU_Latex_Master_Template/issues/8 将脚注调整为①②③样式。

- **参考文献问题**会议和期刊卷码`volume`格式存在不统一、以及存在期刊名称大小写不一致问题，可以手动修改。

> 该部分错误来源于 Bib 引用本身的问题，引用会存在不一致，若需要修改。
>
> 1. `volume` 参考 Issues#11修正 @**[ZFNSQM](https://github.com/ZFNSQM)** 用户的回答。 [参考文献格式问题 · Issue #11 · Ftine/SZU_Latex_Master_Template (github.com)](https://github.com/Ftine/SZU_Latex_Master_Template/issues/11)
> 2. 期刊名称大小写不一致问题是指 一些期刊为 `Axxx,xxx,xxx` 一些为 `Bxxx,Cxxxxx,Dxxxxx`,可以在Bib引用中手动修改完成

-  **参考文献格式** 提示修改，学校引用格式由`gbt7714-2005`更新为`gbt7714-2015`格式 , 根据@**[modest-Hamilton](https://github.com/modest-Hamilton)** 在Issue#11中的分享。

>- 添加两个引用格式文件 `template/gbt7714.sty` 以及 `template/gbt7714-numerical.bst`，修改 `main.tex` 中引用格式
>
>```tex
>%增加包的使用 %参考文献
>\usepackage{template/gbt7714}
>% `main.tex` 文件中参考文献设置相关代码
>\bibliographystyle{template/gbt7714-numerical} 
>```
>
>**请注意会出现 arXiv 文章引用错误，无法显示arXiv等编号，故，仍建议使用 gbt7714-2005 格式**
>
>> 若需要使用 ， arXiv 的问题应该需要去 arXiv 官网导出[@misc](https://github.com/misc)格式的bibtex

------

## 许可协议

本项目采用 MIT 开源协议发布，详见 `LICENSE` 文件。

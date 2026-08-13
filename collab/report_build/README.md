# Building the report PDF

This folder turns the Markdown report into the styled PDF using **Pandoc + XeLaTeX**. You edit the Markdown; this rebuilds the PDF.

## Files

| File | What it is |
|---|---|
| `build_report.sh` | The build script. Transforms a copy of the report, then runs pandoc. |
| `header.tex` | The LaTeX preamble — margins, brand colours, heading style, running header, hyperlinks. **Edit this to change the look.** |
| `titlepage.tex` | The cover page. **Edit this to change the cover.** |
| `_body.md` | A temporary transformed copy of the report, regenerated each run. Safe to ignore/delete. |

The source you actually edit is one level up: `../wanting_35507071_DVP_report.md`. The build never modifies it.

## How to run

From the **corrsponding folder** (the parent of this one):

```bash
bash report_build/build_report.sh
```

The PDF is written to `../Wanting_35507071_DVP_report.pdf`.

## One-time setup

- **pandoc** — RStudio already ships a copy. To check: `pandoc --version`. Otherwise install from pandoc.org.
- **xelatex** — the easiest route on any OS is TinyTeX. In R:

  ```r
  install.packages("tinytex")
  tinytex::install_tinytex()
  ```

- **python3** — pre-installed on macOS; used only for a tiny text transform (no extra packages).

## How the pipeline works (so you can read the code)

1. **Transform** (Python inside `build_report.sh`). Markdown headings and a manual cover don't map cleanly onto a LaTeX document, so a small script rewrites a *copy*:
   - removes the trailing `<!-- REFERENCE BLOCK -->` (the copied requirements);
   - starts the body at `## Section 1` (the cover and manual table of contents are rebuilt by LaTeX instead);
   - shifts heading levels: `## ` → `# ` and `### ` → `## `, so pandoc maps your sections to `\section` and subsections to `\subsection`;
   - converts each `![alt](file.png)` line into a centred, full-width LaTeX figure.

2. **Render** (pandoc). Two input options matter:
   - `-tex_math_dollars` turns **off** dollar-sign math, so `$26,000` prints as text instead of being read as a formula. This is the one setting most likely to bite you if you forget it.
   - `-implicit_figures` is turned **off** because the transform already builds the figures.
   - `--pdf-engine=xelatex` uses XeLaTeX (good Unicode + font support); `-H header.tex` adds the preamble; `--include-before-body titlepage.tex` puts the cover first; `--resource-path` points at the folder holding the screenshots.

## Common tweaks

- **Change the accent colour:** edit `woof` / `woofdark` in `header.tex`.
- **Change margins or the running header text:** `header.tex`.
- **Change anything on the cover:** `titlepage.tex`.
- **Figure captions** currently render as indented blockquote labels (matching the Markdown). To make them small centred italics instead, that's a change in the transform step — ask and it can be added.

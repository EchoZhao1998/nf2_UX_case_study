#!/usr/bin/env bash
# =====================================================================
# build_report.sh - turn the Markdown report into a styled PDF
# =====================================================================
# Usage (run from the DVP folder):
#     bash report_build/build_report.sh
#
# Requirements on your machine:
#   - pandoc    (RStudio bundles a copy; or install pandoc separately)
#   - xelatex   (easiest: in R run  install.packages("tinytex")  then
#                tinytex::install_tinytex() )
#   - python3   (used only for a small text transform; no libraries needed)
#
# What it does, in order:
#   1. Works out the DVP folder (one level up from this script) so the
#      paths are portable - nothing is hard-coded to one computer.
#   2. Runs a small Python transform on a COPY of the report:
#        - drops the trailing "REFERENCE BLOCK" HTML comment
#        - starts the body at "## Section 1" (the cover/TOC are rebuilt)
#        - shifts heading levels (##  -> #,  ### -> ##) so pandoc maps
#          them onto LaTeX \section / \subsection
#        - rewrites each  ![alt](file.png)  image line into a centred,
#          full-width LaTeX figure
#      ...and writes the result to report_build/_body_eihub.md
#   3. Calls pandoc with the XeLaTeX engine, the custom preamble
#      (header.tex) and the title page (titlepage.tex).
#
# IMPORTANT: the original report Markdown is never modified - everything
# happens on the temporary _body_eihub.md copy.
# =====================================================================
set -euo pipefail

# --- 1. Locate folders relative to THIS script (portable) ------------
BUILD_DIR="$(cd "$(dirname "$0")" && pwd)"
DVP_DIR="$(cd "$BUILD_DIR/.." && pwd)"

SRC="$DVP_DIR/EIHUB_Idea_Proposal_MediPort.md"   # the Markdown you edit
BODY="$BUILD_DIR/_body_eihub.md"                       # temporary transformed copy
PDF="$DVP_DIR/EIHUB_Idea_Proposal_MediPort.pdf"   # the output

# --- 2. Transform a copy of the report -------------------------------
SRC="$SRC" BODY="$BODY" python3 - <<'PYEOF'
import os, re
src = open(os.environ['SRC'], encoding='utf-8').read()

# drop the trailing HTML comment ("REFERENCE BLOCK" with the requirements)
i = src.find('<!--')
if i != -1:
    src = src[:i]

# the body begins at the first "## Section 1" (cover + manual TOC dropped;
# pandoc rebuilds the title page and a real TOC instead)
src = src[src.find('## Section 1'):]
src = src.replace('\U0001F43E', '')   # strip the paw emoji LaTeX can't render

# --- LaTeX-escape helper for raw text we drop into the figure caption.
# We are writing direct LaTeX (not letting pandoc convert), so chars that
# carry a special meaning in LaTeX must be escaped or they break the build.
def latex_escape(s):
    repl = [('\\', r'\textbackslash{}'), ('&', r'\&'), ('%', r'\%'),
            ('$', r'\$'), ('#', r'\#'), ('_', r'\_'),
            ('{', r'\{'), ('}', r'\}'),
            ('~', r'\textasciitilde{}'), ('^', r'\textasciicircum{}')]
    for old, new in repl:
        s = s.replace(old, new)
    return s

out = [r'\tableofcontents', r'\clearpage', '']
for line in src.split('\n'):
    st = line.strip()
    if re.fullmatch(r'-{3,}', st):                       # drop --- rules
        continue
    # image -> centred figure with the alt text used as a styled caption.
    # Alt text format expected: "Figure N. <description>" or
    # "Figure Na. <description>" (e.g. "Figure 3a. The Infrastructure...").
    # The "Figure N." label is rendered bold; the rest stays italic so the
    # caption reads as the standard academic-style figure note rather than
    # as a body paragraph.
    img = re.match(r'!\[([^\]]*)\]\(([^)]+)\)\s*$', st)
    if img:
        alt  = img.group(1).strip()
        file = img.group(2)
        if alt:
            m = re.match(r'^(Figure\s+\d+[a-z]?\.)\s*(.*)$', alt, re.S)
            if m:
                cap = (r'\textbf{' + latex_escape(m.group(1)) + '} '
                       + latex_escape(m.group(2)))
            else:
                cap = latex_escape(alt)
            out.append(
                r'\begin{figure}[H]'
                r'\centering\includegraphics[width=\linewidth]{%s}'
                r'\par\vspace{0.4em}'
                r'{\footnotesize\itshape %s}'
                r'\end{figure}' % (file, cap)
            )
        else:
            out.append(r'\begin{figure}[H]\centering'
                       r'\includegraphics[width=\linewidth]{%s}\end{figure}'
                       % file)
        continue
    if line.startswith('### '):                          # heading shift
        out.append('## ' + line[4:])
    elif line.startswith('## '):
        out.append('# ' + line[3:])
    else:
        out.append(line)

open(os.environ['BODY'], 'w', encoding='utf-8').write('\n'.join(out))
print('transform OK ->', os.environ['BODY'])
PYEOF

# --- 3. Render with pandoc + XeLaTeX ---------------------------------
#   -tex_math_dollars : treat "$" as a literal dollar sign, NOT math mode
#                       (the report quotes income figures like $26,000)
#   -implicit_figures : we build our own \figure blocks, so tell pandoc
#                       not to auto-wrap images (avoids double captions)
pandoc "$BODY" \
  -f markdown-tex_math_dollars-implicit_figures \
  --pdf-engine=xelatex \
  -H "$BUILD_DIR/header_eihub.tex" \
  --include-before-body="$BUILD_DIR/titlepage_eihub.tex" \
  --resource-path="$DVP_DIR" \
  -o "$PDF"

echo "Built: $PDF"


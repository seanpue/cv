#!/bin/bash
#
# 2pagecv2pdf.bash
#
# creates PDF out of ReStructuredText C.V. via Latex

# note: may need to shrink font
rst2latex.py cv-2page.rst --documentoptions=letterpaper,12pt   \
                    --strip-comments \
                    --strip-elements-with-class=contents \
                    -i utf8 \
                    --stylesheet-path=cvstyle.tex cv-2page.tex  || { 
  echo "command failed"; exit 1; 
}
pdflatex cv-2page.tex
# copy to index for webpage
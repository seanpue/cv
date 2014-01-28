#!/bin/bash
#
# cv2pdf.bash
#
# creates PDF out of ReStructuredText C.V. via Latex

rst2latex.py cv.rst --documentoptions=letterpaper,12pt   \
                    --strip-elements-with-class=contents \
                    -i utf8 \
                    --stylesheet-path=cvstyle.tex cv.tex  || { 
  echo "command failed"; exit 1; 
}
pdflatex cv.tex

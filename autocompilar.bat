
:init
cls
del *alg *acr *acn *lof *log *lot *out *bak *toc *xdy *ist *gls *glo *blg *aux *bbl
pdflatex -interaction=nonstopmode tfg.tex > nul
bibtex tfg > nul
makeglossaries tfg > nul
pdflatex -interaction=nonstopmode tfg.tex > nul 
pdflatex -interaction=nonstopmode tfg.tex > nul

pause
goto init

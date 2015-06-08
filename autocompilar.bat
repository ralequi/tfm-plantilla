
:init
cls
del *alg *acr *acn *lof *log *lot *out *bak *toc *xdy *ist *gls *glo *blg *aux *bbl
pdflatex -interaction=nonstopmode main.tex > nul
bibtex main > nul
makeglossaries main > nul
pdflatex -interaction=nonstopmode main.tex > nul 
pdflatex -interaction=nonstopmode main.tex > nul

move main.pdf "Trabajo de Fin de Master.pdf"

pause
goto init

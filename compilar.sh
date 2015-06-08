#!/bin/bash

# Compilar
pdflatex -interaction=nonstopmode main.tex
bibtex main
makeglossaries main
pdflatex -interaction=nonstopmode main.tex
pdflatex -interaction=nonstopmode main.tex
mv main.pdf "Trabajo de Fin de Master.pdf"

# Limpiar archivos auxiliares
./limpiar.sh

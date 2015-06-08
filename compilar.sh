#!/bin/bash

# Limpiar archivos auxiliares
./limpiar.sh

# Compilar
pdflatex main.tex
bibtex main
makeglossaries main
pdflatex main.tex
pdflatex main.tex
mv main.pdf "Trabajo de Fin de Master.pdf"

# Limpiar archivos auxiliares
./limpiar.sh

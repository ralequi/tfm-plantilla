#!/bin/bash

# Compilar
echo -n $'Compilando... pdflatex (1/4)\r'
pdflatex -interaction=nonstopmode main.tex > /dev/null

echo -n $'Compilando... makeglossaries\r'
makeglossaries main > /tmp/makeglossaries.log

echo -n $'Compilando... pdflatex (2/4)\r'
pdflatex -interaction=nonstopmode main.tex > /dev/null

echo -n $'Compilando... bibtex\r'
bibtex main > /tmp/bibtex.log

echo -n $'Compilando... pdflatex (3/4)\r'
pdflatex -interaction=nonstopmode main.tex > /dev/null

echo -n $'Compilando... pdflatex (4/4)\r'
pdflatex -interaction=nonstopmode main.tex > /tmp/pdflatex.log

echo -n $'Comprimiendo... [gs prepress quality]...\r'
gs -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress -dNOPAUSE -dQUIET -dBATCH -sOutputFile="Trabajo de Fin de Master.pdf" main.pdf
#mv main.pdf "Trabajo de Fin de Master.pdf"

# Limpiar archivos auxiliares
echo -n $'Limpiando...\r'
./limpiar.sh

echo -n $'Compilacion terminada. '; date

#Latex Warnings
if grep -q 'Warning' /tmp/pdflatex.log
then
        echo ""
        echo -e "Latex Warnings: \e[93m\e[1m"
        grep --text -Pzo '(?s)Warning.*?\n\n' /tmp/pdflatex.log

        #Return to normal color
        echo -e "\e[39m\e[0m"
fi

#Latex Errors
if grep --text -qP '^.?.?.?!' /tmp/pdflatex.log
then
	echo ""
	echo -e "Latex Errors: \e[31m\e[1m"
	grep --text -Pzo '(?s)!.*?l\.\N*\n' /tmp/pdflatex.log

	#Return to normal color
	echo -e "\e[39m\e[0m"
fi

#BibTex Errors
if grep -q 'There was' /tmp/bibtex.log
then
	echo ""
	echo -e "Bibtex Errors! Check log: \e[95m\e[1m"
	cat /tmp/bibtex.log

	#Return to normal color
	echo -e "\e[39m\e[0m"
fi

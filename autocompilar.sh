#!/bin/bash

command -v dnotify >/dev/null 2>&1 || { echo >&2 "Para utilizar este Script debe instalar el programa 'dnotify'. Pruebe con: 'sudo apt-get install dnotify'."; exit 1; }

clear
while [ 1 ]
do
	echo "Recompilando... [Presione Cntrl+C para parar la ejecucion]"
	./compilar.sh
	echo

	echo "Esperando modificaciones en su .tex ... [Presione Ctrl+C para parar la ejecucion]"
	dnotify -Mso src .
done

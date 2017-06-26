#!/bin/bash

command -v inotifywait >/dev/null 2>&1 || { echo >&2 "Para utilizar este Script debe instalar el programa 'inotifywait'. Pruebe con: 'sudo apt-get install inotify-tools'."; exit 1; }

while [ 1 ]
do
	echo "Esperando modificaciones en su .tex ... [Presione Ctrl+C para parar la ejecucion]"

	inotifywait -e modify src/ .

	echo "Recompilando... [Presione Cntrl+C para parar la ejecucion]"

	./compilar.sh

	echo
done

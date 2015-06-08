#!/bin/bash

while [ 1 ]
do
	dnotify -Mso src .

	echo "recompiling... [Presione Cntrl+C para parar la ejecucion]"

	./compilar.sh

done

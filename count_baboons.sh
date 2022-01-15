#!/bin/bash

# función del script:
# leer la entrada:
# $1 Es el nombre de la fila
# $2 Es el  maleID

cut -f 1 $1 | grep -c -w $2

#!/bin/bash

# $1 is the file name
# $2 is the column of interest

echo "Nombre de la columna"
cut -d ',' -f $2 $1 | head -n 1
echo "Nombre de distintos valores:"
cut -d ',' -f $2 $1 | tail -n +2 | sort | uniq | wc -l
echo "Valor minimo:"
cut -d ',' -f $2 $1 | tail -n +2 | sort -n | head -n 1
echo "Valor Máximo:"
cut -d ',' -f $2 $1 | tail -n +2 | sort -n | tail -n 1

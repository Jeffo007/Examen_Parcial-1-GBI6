#! /bin/bash

#1.10.4
#Buzzard et al. (2016) recogieron datos sobre el crecimiento de un bosque en Co>
#el archivo Buzzard2015_data.csv encontrará un subconjunto de sus datos, incluy>
#información taxonómica, abundancia y biomasa de los árboles.
#1. Escribe un script que, para un archivo CSV y un número de columna dados, im>
#el nombre de la columna correspondiente;
#el número de valores distintos en la columna;

#el valor mínimo;
#el valor máximo

echo ID1
bash explore.sh ../data/Buzzard2015_data.csv 1
echo ID2
bash explore.sh ../data/Buzzard2015_data.csv 2
echo ID3
bash explore.sh ../data/Buzzard2015_data.csv 3

echo Dependiendo del numero que se desee o se puede extender el codifo en bucle para obtener el dato de todos los ID

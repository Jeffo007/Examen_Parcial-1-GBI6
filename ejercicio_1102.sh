#!/bin/bash

#Gesquiere et al. (2011) estudiaron los niveles hormonales
#en la sangre de los babuinos. Se tomaron muestras de cada
#individuo varias veces.

# 1) Cuántas veces se registraron los niveles de los individuos 3 y 27?


echo El numero 3 se repite

cut -f 1 ../data/Gesquiere2011_data.csv | grep -c -w 3

# 61

echo El numero 27 se repite

# maleID 27

cut -f 1 ../data/Gesquiere2011_data.csv | grep -c -w 27

# 5

###################################################
# 2) Escribe un script tomando como entrada el nombre
# del archivo y el ID del individuoy devolviendo el
# número de registros para ese ID.

# The script count_baboons.sh shows the solution

echo ¿Cuántas ID tengo?

tail -n +2 ../data/Gesquiere2011_data.csv | cut -f 1 | sort -n | uniq

myIDS=`tail -n +2 ../data/Gesquiere2011_data.csv | cut -f 1 | sort -n | uniq`

echo El numero de veces que se repite cada ID es

for id in $myIDS
do
    mycounts=`bash count_baboons.sh ../data/Gesquiere2011_data.csv $id`
    echo "ID:" $id "counts:" $mycounts
done



###################################################
# 3) Write a script that returns the number of
# times each individual was sampled.

# This requires a) extracting all IDs and b) calling
# the script above for each ID

# To get all unique IDs, we need to tail -n +2 the
# file to remove the header, cut -f 1 to extract
# the IDs, and then run through sort | uniq to
# remove the duplicates:

#tail -n +2 ../data/Gesquiere2011_data.csv | cut -f 1 | sort -n | uniq

# 1
# 2
# 3
# 4
# ...

# To store this list in a script, you can use

#myIDS=`tail -n +2 ../data/Gesquiere2011_data.csv | cut -f 1 | sort -n | uniq`

# And now use a "loop" to cycle through all
# IDs:

#for id in $myIDS
#do
 #   mycounts=`cut -f 1 $1 | grep -c -w $2  ../data/Gesquiere2011_data.csv $id`
  #  echo "ID:" $id "counts:" $mycounts

#done 

# The file count_all_baboons.sh shows the complete
# script:

#cut -f 1 $1 | grep -c -w $2


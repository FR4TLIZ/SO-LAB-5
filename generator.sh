#!/bin/bash

dysk=$1
dostepne_dyski=$(df -h)
dostepne_miejsce=$(echo "$dostepne_dyski" | grep "$dysk" | awk '{print $1, $4}')

mkdir -p logs 

nazwa_pliku="Report_$(date +'%Y%m%d-%H%M%S').txt"

echo "$dostepne_dyski" >> logs/$nazwa_pliku
echo "$dostepne_miejsce" >> logs/$nazwa_pliku

echo "Plik o nazwie $nazwa_pliku zostal zapisany w $(pwd)/logs"

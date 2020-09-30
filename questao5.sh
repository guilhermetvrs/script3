#!/bin/bash

read -p "digite o nome do arquivo" arq

valor=$(cat $arq | wc -l)
#5 é o valor dado na questão
modulo=$((${valor} >= 5))

mkdir $modulo 2> /dev/null && rmdir $modulo && exit 0
mkdir $modulo 2> /dev/null || echo "GOOD"


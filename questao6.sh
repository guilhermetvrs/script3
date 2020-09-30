#!/bin/bash

read -p "digite 3 arquivos: " arq1 arq2 arq3

read -p "digite a palavra proibida" proibida

modulo1=$(grep $proibida $arq1)
modulo2=$(grep $proibida $arq2)
modulo3=$(grep $proibida $arq3)

mkdir $modulo1 >2 /dev/null || echo $arq1  && $(mv $arq1 /tmp) &&rmdir $modulo1
mkdir $modulo2 >2 /dev/null || echo $arq2  && $(mv $arq2 /tmp) && rmdir $modulo2
mkdir $modulo3 >2 /dev/null || echo $arq3 && $(mv $arq3 /tmp) && rmdir $modulo3

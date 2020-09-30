#!/bin/bash


tamanho1=$(cat $1 | wc -l)
tamanho2=$(cat $2 | wc -l)
tamanho3=$(cat $3 | wc -l)


((${tamanho1} > ${tamanho2})) && ((${tamanho2} > ${tamanho3})) && echo "$1, $2 e $3" && exit 0 
((${tamanho1} > ${tamanho3})) && ((${tamanho3} > ${tamanho2})) && echo "$1, $3 e $2" && exit 0
((${tamanho2} > ${tamanho1})) && ((${tamanho1} > ${tamanho3})) && echo "$2, $1 e $3" && exit 0
((${tamanho2} > ${tamanho3})) && ((${tamanho3} > ${tamanho1})) && echo "$2, $3 e $1" && exit 0
((${tamanho3} > ${tamanho2})) && ((${tamanho2} > ${tamanho1})) && echo "$3, $2 e $1" && exit 0
((${tamanho1} > ${tamanho1})) && ((${tamanho1} > ${tamanho2})) && echo "$3, $1 e $2" && exit 0

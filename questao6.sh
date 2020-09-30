#!/bin/bash

read -p "digite 3 arquivos: " arq1 arq2 arq3

read -p "digite a palavra proibida" proibida

result1=$(cat $arq1 | grep ${proibida})
result2=$(cat $arq2 | grep ${proibida})
result3=$(cat $arq3 | grep ${proibida})

test ${result1} == ${proibido} && echo $arq1 && mv $arq1 /tmp || echo "não tem nada proibido no arquivo" $arq1
test ${result2} == ${proibido} && echo $arq2 && mv $arq2 /tmp || echo "não tem nada proibido no" $arq2
test ${result3} == ${proibido} && echo $arq3 && mv $arq3 /tmp || echo "não tem nada proibido no" $arq3

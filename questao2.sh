#!/bin/bash

read -p "digite o nome de 3 arquivos: " a b c

valora=$(cat ${a} |wc -l)
valorb=$(cat ${b} |wc -l)
valorc=$(cat ${c} |wc -l)

((valora>valorb)) && ((valora>valorc)) && echo ${a}
((valorb>valora)) && ((valorb>valorc)) && echo ${b}
((valorc>valorb)) && ((valorc>valora)) && echo ${c}


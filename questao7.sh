#!/bin/bash

user=$(id -u)
(( ${user} == 0 )) && echo "Script foi executado como root" && exit 0 || echo "Script foi executado como usuário padrão :)"


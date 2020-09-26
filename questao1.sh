#!/bin/bash


$(ls ${1} 2> /dev/null)  && echo "sim" || echo "não"

#!/bin/bash

MAGENTA=$(tput setaf 5)
RESET=$(tput sgr0)

printf "Please list the Tex files you want to render. Type 'all' to render all Tex files.\n Examples: \n\t ${MAGENTA}filename1.tex \n\t filename1.tex filename2.tex \n\t all\n${RESET}"
read texfiles

if [ "$texfiles" == "all" ]; then
    latexmk -pdf
else
    for i in $texfiles; do latexmk -pdf "$i";done
fi

mv *.pdf ..
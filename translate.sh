#!/bin/bash
# by h4k1m
# Get word translation from google
#   param $1: source language
#   param $2: destination language
#   param $3: word to translate
# Echo translated word

translation=`
    curl "http://translate.google.com/translate_a/t?client=t&sl=$1&tl=$2&hl=$1&ie=UTF-8&oe=UTF-8&ssel=0&tsel=0&q=$3" --user-agent '' -s | 
    sed -e 's!\[!!g' -e 's!\]!!g' -e 's!"!!g' |
    awk -F',' '{print $1}' 
    `;

echo "Translating $3 from $1 to $2:";
echo $translation;

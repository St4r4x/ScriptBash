#! /bin/bash
set -f
if [ $# -ne 2 ]; then
    echo "Attention, ne passer que 2 arguments"
    exit 0
fi
if [ ! -e "$1" ]; then
    echo "Attention, le fichier doit être existant"
    exit
fi
if [ -d "$1" ]; then
    echo "Attention, votre paramètre est un rep"
    exit
fi
while read line ; do
    echo $line
    num=1
    for m in $line; do
        if [ "$num" -eq "$2" ]; then
        echo $m
        fi
        num=$(($num+1))
    done
done <"$1"

#! /bin/bash
 
if [ $# -eq 0 ]; then
    echo "Bonjour Marcheur Blanc !"
else
    while [ $# -ne 0 ]; do 
    echo "Bonjour $1 !"
    shift
    shift
    done
fi
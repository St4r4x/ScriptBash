#! /bin/bash
# traite le cas dans lequel les arguments du script sont erronés
if [ $# -ne 1 ] ; then
    echo "Attention, passez un seul paramètre"
    exit
fi
if [ -d $1 ] ; then
    echo "Attention, votre paramètre est un rep"
    exit
fi
echo "Tout est bon"
echo "0">$1
while true; do
    read n<$1
    n=$(($n+1))
    echo $n>$1
    echo $n
    sleep 1
done

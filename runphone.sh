#!/bin/sh
# File: runphone.sh
# Date: 18/07/2017

BOOK="phone_book.txt"

exit=0
while [ $exit -ne 1 ]
do
    echo "Ce operatie doriti sa executati?"
    echo -e "Adauga, Afiseaza, Gaseste, Sterge, exit: "
    read answer

    if [ "$answer" = "Adauga" ]
    then
        ./phone.sh
    elif [ "$answer" = "Afiseaza" ]
    then
        ./afisare.sh
    elif [ "$answer" = "Gaseste" ]
    then
        ./gaseste.sh
    elif [ "$answer" = "Sterge" ]
    then
        ./sterge.sh
    elif [ "$answer" = "exit" ]
    then
        exit=1
    else
        echo "Comanda dvs. nu a fost gasita."
    fi
done

exit 0


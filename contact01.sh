#!/bin/sh
# Shell script to make Contact Diary...

# Fiala unde sunt stocate valorile introduse in aplicatie

BOOK="contact01.txt"

# Definirea functiilor necesare aplicatiei CRUD(create, read, update,delete)

function pb_create()
{
    # echo "Functie neimplementata"
    echo -n "Introduceti numele dvs. complet (Ex: Mihai Cornel): "
    read nume
    echo -n "Introduceti numarul de telefon: "
    read nrtel
    # Intreaba utilizatorul pentru confirmare
    echo "Doriti introducerea valorilor in agenda?"
    echo -e "$nume ; $nrtel \n"
    echo -n "y/n: "
    read answer

    if [ "$answer" == "y" ]; then
        # Scrieti valorile in agenda
        echo "$nume ; $nrtel" >>$BOOK
    else
        echo "$nume ; $nrtel NU a fost salvat"
    fi

    exit 0
}

function pb_read()
{
    echo "Functie neimplementata"
}

function pb_update()
{
    echo "Functie neimplementata"
}

function pb_delete()
{
    echo "Functie neimplementata"
}

########### MAIN #############################

exit=0
while [ $exit -ne 1 ]
do
    echo "Ce operatie doriti sa executati?"
    echo -e "adauga, afiseaza, gaseste, sterge, exit: "
    read answer

    if [ "$answer" = "adauga" ]; then
        pb_create
    elif [ "$answer" = "afiseaza" ]; then
        pb_read
    elif [ "$answer" = "gaseste" ]; then
        pb_update
    elif [ "answer" = "exit"] ; then
        exit=1
    else 
    echo "Comanda dvs nu a fost gasita!"
fi
done

exit 0


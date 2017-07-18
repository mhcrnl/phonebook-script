#!/bin/bash

selection=
until [ "$selection" = "0" ]; do
    echo ""
    echo "============= PROGRAM MENU===================="
    echo "1 - Adauga contacte in agenda."
    echo "2 - Afiseaza contactele "
    echo "                              "
    echo "0 - exit program"
    echo "4 - GitHub push folder phonebook-script. "
    echo -n "Enter selection: "
    read selection
    echo ""
    case $selection in
        1 ) ./contact.sh ;;
        2 ) free ;;
        4 ) ./gitpush.sh ;;
        0 ) exit ;;
        * ) echo "Please enter 1, 2, or 0"
    esac
done
       

#!/bin/sh
# File: gaseste.sh
# Data: 18/07/2017

BOOK="phone_book.txt"

# Inreaba utilizatorul ce cauta
echo -n "Ce persoana cautati sau numar: "
read find

# Afisearea capului de linie
echo "Nume ; Numar Telefon"
grep -i $find $BOOK


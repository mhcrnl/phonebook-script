#!/bin/sh
# File: sterge.sh
# Data: 18/07/2017

BOOK="phone_book.txt"

# Intreaba utilizatorul ce linie sa stearga
echo -n "Ce linie doriti sa stergeti: "
read number

# Redenumeste fila inainte de a fi stearsa
mv $BOOK boo.txt

# Adauga numar la linii si sterge acest numar
nl --number-separator=":" boo.txt | grep -v $number: | awk -F: '{print $2}' |tee $BOOK


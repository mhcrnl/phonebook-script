#!/bin/sh
# File: phone.sh
# Data: 18/07/2017
# ======================================================

BOOK="phone_book.txt"

# Intreaba utilizatorul -n(cursorul pe aceeasi linie) si citeste  
echo -n "Introduceti numele complet: "
read name
# Introducerea numarului de telefon
echo -n "Introduceti numarul de telefon: "
read phone
# Afisarea raspunsurilor si intrebarea de confirmare
echo "Doriti introducerea valorilor: "
echo -e "$name ; $phone \n"
echo -n "Introduceti raspunsul (y/n): "
read answer

if [ "$answer" == "y" ]; then
    # Scrieti valorile in fila de text
    echo "$name ; $phone" >> $BOOK
else
    # Afisarea catre utilizator a unui mesaj
    echo "$name ; $phone NOT written to $BOOK"
fi
exit 0

    

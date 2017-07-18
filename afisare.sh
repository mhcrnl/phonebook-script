#!/bin/sh
# File: afisare.sh
# Data: 18/07/2017
# Description: Afisarea listei de contacte
# =========================================================

BOOK="phone_book.txt"

# Afisarea formatului inaintea 
echo "Numarul liniei:   Nume ;  Numar Telefon"
# Afisarea agendei cu nure de linie si pauza cu less
nl --number-separator=": " $BOOK | less


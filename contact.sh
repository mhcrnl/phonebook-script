#!bin/sh
# Shell script to make Contact Diary...

# Fiala unde sunt stocate valorile introduse in aplicatie

BOOK="contacte.txt"

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

echo "Contacts"
echo "1.Save Only"
echo "2.To view saved Contact"
echo "4.Delete"
echo "5.Search"
echo "Enter the number for what you want to do:\c"
read no
case $no in


1 ) #To save one or more number together
	echo "Enter Your Name:\c"
	read name
	echo "Enter Your Mobile Number:\c"
	read mno
	if [ -n "$name" -a -n "$mno" ]
	then
	printf "%-s|0%10s\n" $name $mno | cat >> contact.txt
	sort contact.txt > con.txt 
	echo "Contact has been saved Successfully..."
	elif [ -z "$name" -a -n "$mno" ]
	then
	echo "Please Enter your Name."
	elif [ -z "$mno" -a -n "$name" ]
	then
	echo "Please Enter your Mobile no."
	else
	echo "Please enter your name and Mobile number."
	fi	
				while true
				do
				echo "For next press n" 
				echo "For exit press e"
				echo "Choice:\c"
				read opt
					if [ "$opt" = n ]
					then
						echo "Enter Your Name:\c"
						read name
						echo "Enter Your Mobile Number:\c"
						read mno
						if [ -n "$name" -a -n "$mno" ]
						then
						printf "%-s|0%10s\n" $name $mno | cat >> contact.txt
						sort contact.txt > con.txt 
						echo "Contact has been saved Successfully..."
						elif [ -z "$name" -a -n "$mno" ]
						then
						echo "Please Enter your Name."
						elif [ -z "$mno" -a -n "$name" ]
						then
						echo "Please Enter your Mobile no."
						else
						echo "Please enter your name and Mobile number."
						fi 
					else
						exit
					fi
										
				done ;;

2 ) cat con.txt ;; #Script for open saved contact...
5 ) echo "Type Your name for you want search:\c"
    read pattern
     if grep -i $pattern con.txt
     then
     grep -i $pattern con.txt
     else
     echo "No Name or No number Found."
     fi
     ;; 

4 ) echo "Type Name or Number Which you want to delete:\c"
	read del
	if [ -n $del ]
	then
		grep -i $del con.txt
		echo "Select from this and Enter name or number(Case-Sensitive):\c"
		read delpatt
		echo "WARNING: Once you delete this you can't get back."
		
while true
do
		echo "Are sure want to delete this contact?(y/n):\c"
		read perm
			if [ -n "$perm" -a "$perm" = y ]
			then
				grep -ivw $delpatt con.txt > t1.txt
				cat t1.txt
				mv t1.txt con.txt
				echo "Contact Deleted Successfully."
				exit
			elif [ -n "$perm" -a "$perm" = n ]
			then
				echo "Your contact is not be deleted."
				exit
			else
				echo "Press y for YES and Press n for NO."
			fi
done

	else
		echo "OOooops!You don't have enter name or number..."
	fi
	
esac



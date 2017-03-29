#!/bin/bash



#Question 1
echo "Kenavo"


echo ""
#Question 2
cat tel.dat
echo ""
cut -d";" -f 1 tel.dat | cut -d" " -f 2


echo ""
#Question 3
LISTE=`ls ~`
for i in $LISTE
	do
		if [ -f ~/$i ] 
			then
			ls -l ~/$i | tr -s ' ' | cut -d" " -f 1,5
		fi
	done


echo ""
#Question 4
echo "recherche dans l'annuaire"
read mavar
grep $mavar tel.dat | uniq | sort


echo ""
#Question 5
echo "recherche dans l'annuaire avec commande"
grep $1 tel.dat | uniq | sort


echo ""
#Question 6
TMP="/tmp/temp.$$"
grep -v $2 tel.dat > $TMP
echo "entrez nom"
read nom 
echo "entrez tel"
read tel
echo "entrez email"
read email
echo ""
echo "$nom;$tel;$email" >> $TMP
cat $TMP > tel.dat
rm $TMP

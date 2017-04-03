#!/bin/bash

#Question 1
	#Contenu du fichier : gutremeau


#Question 2,3,4
if [ -f ~/pseudo.cat ]; then
	echo 'le fichier existe'
	PSEUDO=`cat ~/pseudo.cat`
	echo $PSEUDO "est connecte" >> /tmp/conv.cat
	touch ~/online.cat
	chmod 744 ~/online.cat
	tail -f /tmp/conv.cat
fi


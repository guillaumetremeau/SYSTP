#!/bin/bash

#Question 6

if [ -f ~/pseudo.cat ]; then
	LISTE=`ls ~/../*/pseudo.cat`
	for i in $LISTE
		do
			RES=`cat $i 2> /dev/null`
			if [ -n "$RES" ]; then
					echo $RES;
			fi
		done
fi

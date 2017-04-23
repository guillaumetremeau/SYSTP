#!/bin/bash

#Question 8



if [ -f ~/pseudo.cat ]; then
  PSEUDO1="pseudo"
  PSEUDO2="qqn"
  PSEUDO3="Monsieur"

	LISTE=`ls ~/../*/pseudo.cat`
	for i in $LISTE
		do
			RES=`cat $i 2> /dev/null`
			if [ -n "$RES" ] && [[ "$RES" == "$PSEUDO1" ] || [ "$RES" == "$PSEUDO2" ] || [ "$RES" == "$PSEUDO3" ]]; then
					echo "*********** Hello" $RES "pleased to meet you ! **********" >> /tmp/conv.cat
			fi
		done
fi

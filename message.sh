#!/bin/bash

#Question 5
if [ -f ~/pseudo.cat ]; then
	if [ -f ~/online.cat ]; then

		PSEUDO=`cat ~/pseudo.cat`
		echo [`date +%Y-%m-%d:%H:%M`] @$PSEUDO "écrit" $1 >> /tmp/conv.cat
	else
		echo "you are offline"
	fi
fi

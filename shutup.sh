#!/bin/bash

#Question 7

if [ -f ~/online.cat ]; then
	if [ -f ~/pseudo.cat ]; then
		PSEUDO=`cat ~/pseudo.cat`
		echo @$PSEUDO "s'est déconnecté" >> /tmp/conv.cat
		PID=`pgrep "/bin/bash ./tp2.sh"`
		echo "$PID"
		kill -9 "$PID"
		rm ~/online.cat
	else 
		echo "you are already offline"
	fi
fi

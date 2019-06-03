#!/bin/bash

#Variables
dotpoint="." #Element to drow
timedrow=11


echo -e "Hello User, now you need to wait 10 sec\n \n"
echo -n "Waiting for connecting to server"

#cicle is begin!

	for (( count=1; count<$timedrow; count++ ))
	do
	sleep 1 #sleep 1 sec to draw the  dot
	echo -n "$dotpoint"
	done


	if [ $count  = $timedrow ]; then
	echo -e "\n\nOOPS, Server Is Down :)"
	fi

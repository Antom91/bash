#!/bin/bash

#Variables
timeoutch=10 #timeout to check connections
SERVER_PORT=3306 #port for check
dotpoint="." #Element to draw
timend=$((SECONDS+$timeoutch)) #time for end check connection

echo -e "Hello $USER, now you need to wait $timeoutch sec\n"
echo -e "Waiting for connecting to server\c"

	while [ $SECONDS -lt $timend ]
		do
			echo -n "$dotpoint"

result=$(netstat -ano | grep $SERVER_PORT | grep -o on) #command to check if mysql have activity

	if [ $result ]
		then
			echo -e "\nWe have Activity on server\n"
			exit 0
	fi

	done

! true #If not connection
echo -e "\nWe dont have Activity on  this server. Error Code = $? \n"

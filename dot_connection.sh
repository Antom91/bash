#!/bin/bash

#Variables
timeoutch=10 #Timeout to check connections
SERVER_ADDR=127.0.0.1 # Adress for check
SERVER_PORT=80 #Port for check
dotpoint="." #Element to draw
timend=$((SECONDS+$timeoutch)) #time for end check connection

echo -e "Hello $USER, now you need to wait $timeoutch sec\n"
echo -e "Waiting for connecting to server\c"

	while [ $SECONDS -lt $timend ]
		do
		echo -n "$dotpoint"

	result=$(nc -zv $SERVER_ADDR $SERVER_PORT -w 1 2>&1 | grep -oh succeeded)


		if [[ $result == "succeeded" ]]
			then
			echo -e "\nThe port is active!\n"
			exit 0
		else
			sleep 1
		fi

	done

               ! true #If not connection
                echo -e "\nThe Port is Not Active. Error Code = $? \n"
                exit 1


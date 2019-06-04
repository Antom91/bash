#!/bin/bash

#Variables
timeoutch=10 #Timeout to check connections
SERVER_ADDR=127.0.0.1 # Adress for check
SERVER_PORT=80 #Port for check
dotpoint="." #Element to draw
timeofico=0.3 #Time of icon symbols change

timend=$((SECONDS+$timeoutch)) #time for end check connection

#Variables to make loading status icon
lo1='|'
lo2='/'
lo3='-'
lo4='\'

#function of loading status icon
loadi ()
{
        printf "\b$lo1"
	sleep $timeofico
        printf "\b$lo2"
        sleep $timeofico
	printf "\b$lo3"
	sleep $timeofico
        printf "\b$lo4"
	sleep $timeofico
}

echo -e "Hello $USER, now you need to wait $timeoutch sec\n"
echo -e "Waiting for connecting to server \c"

	while [ $SECONDS -lt $timend ]
		do
		#echo -n "$dotpoint"

		result=$(nc -zv $SERVER_ADDR $SERVER_PORT -w 1 2>&1 | grep -oh succeeded)


		if [[ $result == "succeeded" ]]
			then
			echo -e "\nThe port is active!\n"
			exit 0
		else
		loadi
		fi

	done

               ! true #If not connection
                echo -e "\nThe Port is Not Active. Error Code = $? \n"
                exit 1


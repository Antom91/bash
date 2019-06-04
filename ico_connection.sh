#!/bin/bash

#Variables
timeoutch=10 #Timeout to check connections
SERVER_ADDR=127.0.0.1 # Adress for check
SERVER_PORT=81 #Port for check
dotpoint="." #Element to draw
timeofico=0.2 #Time of icon symbols change

timend=$((SECONDS+$timeoutch)) #time for end check connection

#Variables to make loading status icon
icons='\-/|'
n=1 #number of position icon

#Function of check port
checkp ()
{
nc -zv $SERVER_ADDR $SERVER_PORT -w 1 &> /dev/null bach; sta=$?
sleep $timeofico
}

#function of loading status icon
loadi ()
{
printf "\b${icons:n++%${#icons}:1}"
}

echo -e "Hello $USER, now you need to wait $timeoutch sec\n"
echo -e "Waiting for connecting to server \c"

	while [ $SECONDS -lt $timend ]
		do
		checkp #Call function of  check port
		if [[ $sta == 0 ]]
			then
			echo -e "\nThe port is active!\n"
			exit 0
		else
		loadi #Call function of draw load icon status 
		fi

	done
		if [ $sta -ne 0 ]
			then
                	echo -e "\nThe Port is Not Active. Error Code = $sta \n"
                	exit 1
		fi


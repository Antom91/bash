#!/bin/bash

#Variables
timeoutch=10 #Timeout to check connections
dotpoint="." #Element to draw
timend=$((SECONDS+$timeoutch)) #time for end check connection

SERVER_ADDR=${SERVER_ADDR:-127.0.0.1}
SERVER_PORT=${SERVER_PORT:-80}

#Function of check port
checkp ()
{
	nc -zv $SERVER_ADDR $SERVER_PORT -w 1 &> /dev/null bach; sta=$? 
	sleep 1
}

echo -e "Hello $USER, now you need to wait $timeoutch sec\n"
echo -e "Waiting for connecting to server\c"

        while [ $SECONDS -lt $timend ]
                do
                checkp #Call function of  check port
                if [[ $sta == 0 ]]
                        then
                        echo -e "\nThe port is active!\n"
                        exit 0
                else
                echo -n "$dotpoint" #Call function of draw dot loading status 
                fi

        done
                if [ $sta -ne 0 ]
                        then
                        echo -e "\nThe Port is Not Active. Error Code = $sta \n"
                        exit 1
                fi

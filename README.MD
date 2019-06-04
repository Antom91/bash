# Bash Port Checker

Bash Port Checker - simple bash script to check if tcp port is available.
This script based on netcat software.

You can setup variables:
  - timeoutch=10 #Timeout to check connections
  - timeofico=0.2 #Time of icon symbols change
 
Examples to can run:
  - `SERVER_ADDR=google.com SERVER_PORT=80 ./ico_connection.sh`
  - `SERVER_ADDR=google.com ./ico_connection.sh`
  - `SERVER_PORT=80 ./ico_connection.sh`
  - `./ico_connection.sh`
If you execute this script like this: `#./ico_connection.sh`, that will check port 80 on 127.0.0.1 IP

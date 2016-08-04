#!/bin/bash
#chmod +x run.sh

src=$1

echo "This script is about to run another script."


cd /home/elias/Documents/DistributedSystems/Scenarios 
echo "Starting scenario1 , 10 readers">> senario2.txt 
echo "-----------------------------------------------">> senario2.txt 
 
cd /home/elias/Documents/DistributedSystems/Scenarios/Scenario2

STARTTIME=$(date +%s)
for ((i=1;i<=1;i++)); do

	sh ./1reader.sh 1 &
	sh ./1reader.sh 1 &
	sh ./1reader.sh 2 &
	sh ./1reader.sh 3 &
	sh ./1reader.sh 4 &
	sh ./1reader.sh 5 &
	sh ./1reader.sh 6 &
	sh ./1reader.sh 7 &
	sh ./1reader.sh 8 &
	sh ./1reader.sh 9 &
	sh ./1reader.sh 10  	 
done  

wait 
ENDTIME=$(date +%s)


cd /home/elias/Documents/DistributedSystems/Scenarios 

echo "$(($ENDTIME - $STARTTIME))" >> senario2.txt 
echo "-----------------------------------------------">> senario2.txt
echo "Ending scenario1 , 10 readers">> senario2.txt 
echo "-----------------------------------------------">> senario2.txt
 
wait
echo 'Script run'
exit

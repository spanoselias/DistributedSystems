#!/bin/bash
#chmod +x run.sh

 

echo "This script is about to run another script."
 


cd /home/elias/Documents/DistributedSystems/Scenarios 
echo "Starting scenario1 , 20 readers">> senario2.txt 
echo "-----------------------------------------------">> senario2.txt 

echo "This script has just run another script."
cd /home/elias/Documents/DistributedSystems/Scenarios/Scenario2

STARTTIME=$(date +%s)
for ((i=1;i<=1;i++)); do

	sh ./1reader.sh 1 &
	sh ./1reader.sh 2 &
	sh ./1reader.sh 3 &
	sh ./1reader.sh 4 &
	sh ./1reader.sh 5 &
	sh ./1reader.sh 6 &
	sh ./1reader.sh 7 &
	sh ./1reader.sh 8 &
	sh ./1reader.sh 9 &
	sh ./1reader.sh 10 &
	sh ./1reader.sh 11 &
	sh ./1reader.sh 12 &
	sh ./1reader.sh 13 &
	sh ./1reader.sh 14 &
	sh ./1reader.sh 15 &
	sh ./1reader.sh 16 &
	sh ./1reader.sh 17 &
	sh ./1reader.sh 18 &
	sh ./1reader.sh 19 &
	sh ./1reader.sh 20  
 
done 

wait
ENDTIME=$(date +%s)

cd /home/elias/Documents/DistributedSystems/Scenarios 

echo "$(($ENDTIME - $STARTTIME))" >> senario2.txt 
echo "-----------------------------------------------">> senario2.txt
echo "Ending scenario1 , 20 readers">> senario2.txt 
echo "-----------------------------------------------">> senario2.txt
 
echo 'Script run'
exit

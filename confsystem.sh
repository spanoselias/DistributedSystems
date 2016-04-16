#!/bin/bash
#chmod +x run.sh

repliport=30005
dirport=20005
managerport=40002

echo "#DIRECTORIES" >> myfile.txt
echo "$1" >> myfile.txt
for i in {0..1}
do
   	
  STRDir="Directory_"
  STRDir+=$i;  
	
  dirport=$(($dirport + $i))  

  echo "$2 $dirport " >> myfile.txt	
 	 	
   cp -rf Directory/ System/$STRDir
   gnome-terminal -x sh -c "cd System/$STRDir ; ./dir -p $dirport; cat"
done


echo "#REPLICAS" >> myfile.txt
echo "$1" >> myfile.txt 
for i in {0..1}
do
  STRRep="Replica_"
  STRRep+=$i; 
  repliport=$(($repliport + $i)) 	 	
   cp -rf Replica/ System/$STRRep
   gnome-terminal -x sh -c "cd System/$STRRep ; ./repli -p $repliport; cat"
done


echo "#FILEMANAGERS" >> myfile.txt
echo "$1" >> myfile.txt 
for i in {0..1}
do
  STRManager="FileManager_"
  STRManager+=$i;
  managerport=$(($managerport + $i))  
	 	 	
   cp -rf FileManager/ System/$STRManager
   gnome-terminal -x sh -c "cd System/$STRManager ; ./fil -p $managerport; cat"
  	
done

echo "#PERMISSION" >> myfile.txt
echo "L0" >> myfile.txt
 

echo 'Script run'
exit

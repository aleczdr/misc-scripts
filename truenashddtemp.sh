#!/bin/bash
adastat () { echo -n `camcontrol cmd $1 -a "E5 00 00 00 00 00 00 00 00 00 00 00" -r - | awk '{print $10 " " ; }'` " " ; }
echo 
echo System Temperatures  - `date`
cat /etc/version
uptime | awk '{ print "\nSystem Load:",$8,$9,$10,"\n" }'
echo "CPU Temperature:"
sysctl -a | egrep -E "cpu\.[0-9]+\.temp"

echo
echo "Drive Activity Status"
for i in $(sysctl -n kern.disks | awk '{for (i=NF; i!=0 ; i--) if(match($i, '/ada/')) print $i }' ); do    echo -n $i:; adastat $i; done; echo ; echo

#for i in $(sysctl -n kern.disks | awk '{for (i=NF; i!=0 ; i--) if(match($i, '/da/')) print $i }' ); do    echo -n $i:; adastat $i; done; echo ; echo

echo "HDD Temperature:"
for i in $(sysctl -n kern.disks | awk '{for (i=NF; i!=0 ; i--) if(match($i, '/da/')) print $i }' ) 
do
   echo $i `smartctl -a /dev/$i | awk '/Temperature_Celsius/{DevTemp=$10;} /Serial Number:/{DevSerNum=$3}; /Device Model:/{DevName=$3} END { print DevTemp,DevSerNum,DevName }'`
done
echo
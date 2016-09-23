#!/bin/bash

#Pourcentage utilisé au maximum
limit=70
email="mail@mail.com"
system=`hostname`
# On filtre sur la ligne genma qui contient Freebox
for line in `df -aPh | grep "genma" |grep "^/" | grep \% | sort | awk '{print$6"-"$5"-"$4}'`;
do
	echo "Ligne" $line
	percent=`echo "$line" | awk '{print substr($1,1,2) }'`
	echo "Pourcentage" $percent
        if [ $percent -ge $limit ]; then
        	echo "Alerte Espace Disque sur $system !!!"
	        echo -e "`df -aPh`" | mail -s "Alerte Espace Disque sur $system - La partition $partition atteint $percent %" $email
        fi
done

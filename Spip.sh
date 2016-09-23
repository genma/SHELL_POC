#!/bin/bash

#recuperation du dump .sql.gz
utilisateur_sql[0]=genma
mdp_sql[0]=password
wget http://sql.free.fr/backup.php --post-data="login=${utilisateur_sql[$i]}&password=${mdp_sql[$i]}&check=1&all=1" -O $(date +%F_%H-%M-%S).sql.gz

#on dezippe .sql.gz
gzip -d *.gz
#on fait le sed
cat 201*.sql|sed 's/http:\/\/genma.free.fr/.\//g'>sortie.sql

#on charge le dump dans Yunohost
mysql -u root --password=`cat /etc/yunohost/mysql` -h localhost spip < sortie.sql

#on efface les fichiers
rm *.sql

#on envoit un mail
# Parameters for email alert
EMAIL_ALERT_TO="mail@mail.com"
EMAIL_ALERT_SUBJ="Yunohost - Miroir du blog"
echo -e "La copie de la base Genma.free.fr sur Yunohost/SPIP a ete faite et s'est correctement deroulee.\n"  \
        " \n"\
	"MiniPC\n"  \
    | mail -s "$EMAIL_ALERT_SUBJ" ${EMAIL_ALERT_TO}



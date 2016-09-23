#/bin/bash

BACKUPDIR="/Backup/NginxLogFileReport/FullReport"
# On fait le cat dans /tmp pour que ce soit effacer ensuite
cat /var/log/nginx/blog.genma.fr-access.log* > /tmp/blog.genma.fr-access.full.log
echo "Goacess - Lancement de la generation des rapports HTML"
goaccess --log-format=COMBINED -f /tmp/blog.genma.fr-access.full.log -a -o ${BACKUPDIR}/BlogFullReport.html
rm /tmp/blog.genma.fr-access.full.log
echo "Goacess - Fini"

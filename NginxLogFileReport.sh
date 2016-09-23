#/bin/bash

BACKUPDIR="/Backup/NginxLogFileReport/`date +%Y%m%d`"
echo "Creation du repertoire ${BACKUPDIR}"
mkdir -p ${BACKUPDIR}
echo "Creation du repertoire ${BACKUPDIR} ok"
echo "Goacess - Lancement de la generation des rapports HTML"
goaccess --log-format=COMBINED -f /var/log/nginx/access.log -a -o ${BACKUPDIR}/access.html
goaccess --log-format=COMBINED -f /var/log/nginx/agenda.genma.org-access.log -a -o ${BACKUPDIR}/agenda.html
goaccess --log-format=COMBINED -f /var/log/nginx/blog.genma.fr-access.log -a -o ${BACKUPDIR}/blog.html
goaccess --log-format=COMBINED -f /var/log/nginx/cloud.genma.org-access.log -a -o ${BACKUPDIR}/cloud.html
goaccess --log-format=COMBINED -f /var/log/nginx/genma.fr-access.log -a -o ${BACKUPDIR}/genma.fr.html
goaccess --log-format=COMBINED -f /var/log/nginx/genma.org-access.log -a -o ${BACKUPDIR}/genma.org.html
goaccess --log-format=COMBINED -f /var/log/nginx/music.genma.org-access.log -a -o ${BACKUPDIR}/music.html
goaccess --log-format=COMBINED -f /var/log/nginx/rss.genma.org-access.log -a -o ${BACKUPDIR}/rss.html
goaccess --log-format=COMBINED -f /var/log/nginx/shaarli.genma.org-access.log -a -o ${BACKUPDIR}/shaarli.html
goaccess --log-format=COMBINED -f /var/log/nginx/tc2t34xsk4aiglom.onion-access.log -a -o ${BACKUPDIR}/tc2t34xsk4aiglom.html
goaccess --log-format=COMBINED -f /var/log/nginx/wallabag.genma.org-access.log -a -o ${BACKUPDIR}/wallabag.html
goaccess --log-format=COMBINED -f /var/log/nginx/wiki.genma.org-access.log -a -o ${BACKUPDIR}/wiki.html
goaccess --log-format=COMBINED -f /var/log/nginx/zerobin.genma.org-access.log -a -o ${BACKUPDIR}/zerobin.html
echo "Goacess - Lancement de la generation des rapports HTML"
echo "Archivage"
tar -zcvf ${BACKUPDIR} /Backup/NginxLogFileReport/`date +%Y%m%d`.tar.gz
echo "Archivage ok"
echo "Fin du script"

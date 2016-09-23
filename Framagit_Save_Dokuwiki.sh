#!/bin/bash

# Rsync pour sauvegarder /var/www/dokuwiki vers /home/jerome/Framagit/yunohostcloudperso/dokuwiki
RSYNC_OPTIONS=" -a --delete --numeric-ids  -H"
rsync $RSYNC_OPTIONS /var/www/dokuwiki /home/jerome/Framagit/yunohostcloudperso/

cd /home/jerome/Framagit/yunohostcloudperso/
git add /home/jerome/Framagit/yunohostcloudperso/dokuwiki/*
git commit -m "Sauvegarde Dokuwiki `date +%Y-%m-%d-%H:%m:%S`"

# On dépose tout ça sur Framagit dans le bon répertoire
git push -u origin master 

# Pour finir on fait un echo
echo " "
echo "------------------------------------------------"
echo "Rsync, Git commit, Git push sur Framagit : DONE "
echo "------------------------------------------------"

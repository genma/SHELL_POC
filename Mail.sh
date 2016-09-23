#!/bin/bash

# Parameters for email alert
#EMAIL_ALERT_FROM="test@genma.fr"
EMAIL_ALERT_TO="mail@mail.com"
EMAIL_ALERT_SUBJ="Test de sujet"
echo -e " Here is the log of what happened\n"             \
        "Consider also checking /var/log/letsencrypt/\n"  \
        "--------------------------------------------\n"  \
    | mail -s "$EMAIL_ALERT_SUBJ" ${EMAIL_ALERT_TO}

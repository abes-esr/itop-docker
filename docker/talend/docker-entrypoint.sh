#!/bin/bash

# Réglage de /etc/environment pour que les crontab s'exécutent avec les bonnes variables d'env
echo "$(env)
LANG=en_US.UTF-8" > /etc/environment

# Initialisation de la crontab
echo "00 21 * * * '$ITOP_TALEND_JOB' 1>/proc/1/fd/1 2>/proc/1/fd/2" > /etc/cron.d/tasks
echo "-> Installation de la crontab :"
cat /etc/cron.d/tasks
crontab /etc/cron.d/tasks

# execute CMD (crond)
exec "$@"
###
# Image pour le batch de synchro Talend
# Remarque: l'image openjdk:11 n'est pas utilisée car nous avons besoin de cronie
#           qui n'est que disponible sous centos/rockylinux.
FROM rockylinux:8 as batch-image
WORKDIR /scripts/
# systeme pour les crontab
# cronie: remplacant de crond qui support le CTRL+C dans docker (sans ce système c'est compliqué de stopper le conteneur)
RUN dnf install -y cronie gettext && \
    crond -V && rm -rf /etc/cron.*/*
RUN dnf install -y java-1.8.0-openjdk
# Les locales fr_FR
RUN dnf install langpacks-fr glibc-all-langpacks -y
ENV LANG fr_FR.UTF-8
ENV LANGUAGE fr_FR:fr
ENV LC_ALL fr_FR.UTF-8
# Lancement de l'entrypoint et du démon crond
COPY docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["crond", "-n"]

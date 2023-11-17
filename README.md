Ce dépôt est un fork de celui-ci : https://github.com/Maghin/docker-iTop/tree/master 

Il s'agit d'une adaptation pour l'Abes.

Faire l'installation, exemple : http://diplotaxis2-dev.v212.abes.fr:28080/

Changer les droits :



Modifier une sauvegarde automatique : Fichier config-itop.php : bien mettre l'url publique de l'instance itop, et l'host de la BDD
Fichier itop-dump.sql : faire un rechercher/remplacer pour mettre :

`itop_user`@`%`

Refaire le tar.gz (sans le répertoire), exemple :

/mnt/c/Users/charot/Desktop/itop-2023-09-07_23_30$ tar zcvf ../itop-2023-09-07_23_30-3.tar.gz *

Copier / coller le tar.gz dans : data/backups/manual/

sudo docker cp /tmp/itop-2023-11-01_23_30.tar.gz itop:/var/www/itop/data/backups/manual

Restaurer la sauvegarde.

Attention les sauvegardes automatiques sont faites avec le user root. Elles ne peuvent pas être téléchargées par l'interface, sauf si on leur change leurs droits (777 par exemple).


Pour démarrer itop :

    docker compose up --build -database

Pour arrêter :

    docker compose down -v

Il est possible de spécifier la version d'iTop dans le fichier .env (.env-dist en exemple, dans ce dépôt).

Les volumes sont montés dans `./volumes`.

iTop est disponible à l'adresse :

- iTop: (http://localhost:8080)

### Installation d'itop (après un premier démarrage) :

1/ Changer les droits :  

    chmod -R 777 volumes/itop/extensions/
    sudo docker exec -it itop bash
    cd .. && chmod -R 777 itop && chmod 444 itop/conf/production/config-itop.php

2/ Modifier une sauvegarde automatique :   
Fichier config-itop.php : bien mettre l'url publique de l'instance itop, et l'host de la BDD  
Fichier itop-dump.sql : faire un rechercher/remplacer pour mettre : \`itop_user\`@\`%`    

3/ Refaire le tar.gz (sans le répertoire), exemple :

    /mnt/c/Users/xxxx/Desktop/itop-2023-09-07_23_30$ tar zcvf ../itop-2023-09-07_23_30-3.tar.gz *

4/ Copier / coller le tar.gz dans : data/backups/manual/

sudo docker cp /tmp/itop-2023-11-01_23_30.tar.gz itop:/var/www/itop/data/backups/manual

5/ Restaurer la sauvegarde, par l'interface d'admin d'itop.  
/!\ Attention les sauvegardes automatiques sont faites avec le user root. Elles ne peuvent pas être téléchargées par l'interface, sauf si on leur change leurs droits (777 par exemple).




### Sauvegarde

Sauvegarder le répertoire : ``/opt/pod/itop-docker/volumes/itop/data`` qui contient les sauvegardes automatiques quotidiennes d'iTop.

Le contenu du répertoire ``/opt/pod/itop-docker/volumes/mariadb/`` n'a pas besoin d'être sauvegardé. Et au contraire il est judicieux de l'exclure du système de sauvegarde car il contient les données binaires du mariadb d'itop. 


### License

MIT

### Original Author

MerhylStudio <shk@merhylstudio.fr>


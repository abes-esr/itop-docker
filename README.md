Ce dépôt est un fork de celui-ci : https://github.com/Maghin/docker-iTop/tree/master 

Il s'agit d'une adaptation pour l'Abes.

Pour démarrer :

    docker compose up --build -database

Quand l'installation est finie, aller dans le conteneur itop et changer les droits : 
  
    cd .. && chmod -R 777 itop && chmod 444 itop/conf/production/config-itop.php

Pour arrêter : 

    docker compose down -v

Il est possible de spécifier la version d'iTop dans le fichier .env (.env-dist en exemple, dans ce dépôt).

Les volumes sont montés dans `./volumes`.

iTop est disponible à l'adresse :

- iTop: (http://localhost:8080)

## Sauvegarde

Sauvegarder le répertoire : ``/opt/pod/itop-docker/volumes/itop/data`` qui contient les sauvegardes automatiques quotidiennes d'iTop.

Le contenu du répertoire ``/opt/pod/itop-docker/volumes/mariadb/`` n'a pas besoin d'être sauvegardé. Et au contraire il est judicieux de l'exclure du système de sauvegarde car il contient les données binaires du mariadb d'itop. 


## License

MIT

## Original Author

MerhylStudio <shk@merhylstudio.fr>


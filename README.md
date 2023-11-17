This repo is a fork of this one : https://github.com/Maghin/docker-iTop/tree/master 

It's an adaptation for use by Abes.

To run :

    docker compose up --build -database

When Setup is complete, go to the itop container and change rights: 
  
    cd .. && chmod -R 777 itop && chmod 444 itop/conf/production/config-itop.php

To stop : 

    docker compose down -v

It's possible to specify the version of iTop in the .env file.

All volumes are mounted in `./volumes`.

Services will be available at following addresses:

- iTop: (http://localhost:8080)
- adminer: (http://localhost:8000)

## Sauvegarde

Todo : compléter les éléments à sauvegarder (ex: les dumps de la base mariadb)

Le contenu du répertoire ``/opt/pod/itop-docker/volumes/mariadb/`` n'a pas besoin d'être sauvegardé. Et au contraire il est judicieux de l'exclure du système de sauvegarde car il contient les données binaires de du mariadb d'itop. 


## License

MIT

## Original Author

MerhylStudio <shk@merhylstudio.fr>


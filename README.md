Ce dépôt est un fork de celui-ci : https://github.com/Maghin/docker-iTop/tree/master 

Il s'agit d'une adaptation pour l'Abes.

Faire l'installation, exemple : http://diplotaxis2-dev.v212.abes.fr:28080/

Changer les droits :



Modifier une sauvegarde automatique :  
Fichier `config-itop.php` : bien mettre l'url publique de l'instance itop, et l'host de la BDD  
Fichier `itop-dump.sql` : faire un rechercher/remplacer pour mettre :

> \`itop_user\`@\`%\`

Refaire le tar.gz (sans le répertoire), exemple :

`/mnt/c/Users/NomDuCompte/Desktop/itop-2023-09-07_23_30$ tar zcvf ../itop-2023-09-07_23_30-3.tar.gz *`

Copier / coller le tar.gz dans : `data/backups/manual/`

`sudo docker cp /tmp/itop-2023-11-01_23_30.tar.gz itop:/var/www/itop/data/backups/manual`

Restaurer la sauvegarde.

Attention les sauvegardes automatiques sont faites avec le user root. Elles ne peuvent pas être téléchargées par l'interface, sauf si on leur change leurs droits (777 par exemple).


Pour démarrer itop :

    docker compose up --build -database

Pour arrêter :

    docker compose down -v

Il est possible de spécifier la version d'iTop dans le fichier .env (.env-dist en exemple, dans ce dépôt).

Les volumes sont montés dans `./volumes`.

iTop est disponible à l'adresse :

- iTop: (http://localhost:28080)

### Installation d'itop (après un premier démarrage) :

1/ (Optionnel) Copier dans `volumes/talend` le répertoire `SUPPLEMENTS` du git Abes interne : https://git.abes.fr/supi/itop-talend , afin de faire fonctionner la récupération automatique d'information du SI par le job Talend.

/!\ Attention : il faut avoir dézipper le JobsZip/xxxLanceTousLesJobsxxx.zip et bien indiqué le chemin du shell correspondant en variable d'environnement.  
Exemple : `/scripts/JobsZip/.../AB_LanceTousLesJobsPROD_run.sh`  

Le conteneur itop-talend exécutera quotidiennement ce job.

2/ Changer les droits des volumes et entrypoint :  

    chmod -R 777 volumes
    chmod -R 777 docker

3/ Démarrer les conteneurs : 

    sudo docker compose up --build -d

4/ Installation par l'interface graphique d'itop. 

    http://diplotaxis2-dev.v212.abes.fr:28080/

![image](https://github.com/abes-esr/itop-docker/assets/10114671/e42b99eb-e0e2-491d-a456-4372add020a0)

![image](https://github.com/abes-esr/itop-docker/assets/10114671/6582a958-574b-475e-8416-4d25e2d79a60)

![image](https://github.com/abes-esr/itop-docker/assets/10114671/92babe68-eec2-4ce6-886a-c576be9b66d8)

![image](https://github.com/abes-esr/itop-docker/assets/10114671/a9be81af-e829-4ef8-bf46-cf12ab849bb2)

![image](https://github.com/abes-esr/itop-docker/assets/10114671/875e870b-af60-4cde-8da8-7eb9d5ea409f)

![image](https://github.com/abes-esr/itop-docker/assets/10114671/e6e6129f-eac6-4f68-8835-3006288f4ab3)

![image](https://github.com/abes-esr/itop-docker/assets/10114671/6c65c733-65f4-4231-9904-57bccc7d4eeb)

![image](https://github.com/abes-esr/itop-docker/assets/10114671/ff1a65d0-3fb3-4e3b-b050-9add8e1833aa)

![image](https://github.com/abes-esr/itop-docker/assets/10114671/122e0c9a-398b-416f-bd39-91440f26777d)


5/ Modifier les droits des fichiers itop : 
    
    sudo docker exec -it itop bash
    cd .. && chmod -R 777 itop && chmod 444 itop/conf/production/config-itop.php

6/ Modifier une sauvegarde automatique :   
`Fichier config-itop.php` : bien mettre l'url publique de l'instance itop, et l'host de la BDD  
`Fichier itop-dump.sql` : faire un rechercher/remplacer pour mettre : \`itop_user\`@\`%`    

7/ Refaire le tar.gz (sans le répertoire), exemple :

    /mnt/c/Users/xxxx/Desktop/itop-2023-09-07_23_30$ tar zcvf ../itop-2023-09-07_23_30-3.tar.gz *

8/ Copier / coller le tar.gz dans : data/backups/manual/

sudo docker cp /tmp/itop-2023-11-01_23_30.tar.gz itop:/var/www/itop/data/backups/manual

9/ Restaurer la sauvegarde, par l'interface d'admin d'itop.  
/!\ Attention les sauvegardes automatiques sont faites avec le user root. Elles ne peuvent pas être téléchargées par l'interface, sauf si on leur change leurs droits (777 par exemple).




### Sauvegarde

Sauvegarder le répertoire : ``/opt/pod/itop-docker/volumes/itop/data`` qui contient les sauvegardes automatiques quotidiennes d'iTop.

Le contenu du répertoire ``/opt/pod/itop-docker/volumes/mariadb/`` n'a pas besoin d'être sauvegardé. Et au contraire il est judicieux de l'exclure du système de sauvegarde car il contient les données binaires du mariadb d'itop. 


### Architecture

<img alt="schéma d'architecture" src="https://docs.google.com/drawings/d/e/2PACX-1vSw0aPhwUEQbgyMN4tEOdkqwE_KlH8ndaPgwFHF8sO3aHd9nI9CwWj_z89fYL2VDPfCIIzwecl0XRbf/pub?w=2270&amp;h=1127">

([lien](https://docs.google.com/drawings/d/1G4eAW5kOLmGZQzjN_4i-INiKT3ML1gLNGdSJa-8LZDE/edit) pour modifier le schéma - droits requis)


### License

MIT

### Original Author

MerhylStudio <shk@merhylstudio.fr>


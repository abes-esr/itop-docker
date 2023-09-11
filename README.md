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

## License

MIT

## Original Author

MerhylStudio <shk@merhylstudio.fr>


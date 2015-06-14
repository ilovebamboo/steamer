# The steamer's settings of enviroment

## run with Docker

* install docker and docker-cmopose
 * https://docs.docker.com/installation/#installation
 * https://docs.docker.com/compose/
* start steamer
 * cd project/docker
 * cp docker-compose-example.yml docker-compose.yml
 * docker-compose -p steamer build
 * docker-compose -p steamer pull 
 * docker-compose -p steamer up -d 

## run on development

After `cp docker-compose-example.yml docker-compose.yml` then

Add blow to the docker-compose.yml after build section

```
  volumes:
    - /Users/your_code_dir:/gopath/src/app:rw
```

Rerun your code: 

`docker --tlsverify=false exec -it steamer_steamer_1 /bin/go-build; docker-compose -p steamer restart steamer`

# main-nginx
17/10/17 18:17

# verifier que le port n'est pas utilisé par nginx
sudo service nginx stop
sudo service docker restart

#-----------  debugage -----------------------------#
# dans main-nginx
docker build -t main-nginx:1.0.0 .

# dans main-proxy
docker build -t main-proxy:1.0.0 .
docker run --name main-proxy -d -p 80:80 main-proxy:1.0.0
verifier sur le port http://localhost:80
docker exec -it main-proxy /bin/bash

#----------- production manuelle ----------------------#
# à la racine
docker build -t main-proxy:1.0.0 .
docker run --name main-proxy -d -p 80:80 main-proxy:1.0.0
verifier sur le port http://localhost:8080

#----------- production via docker-compose ------------#
# création des images build or rebuild services
docker-compose build
# lancement des containers,volumes
docker-compose up -d

# Stop and remove containers, networks, images, and volumes
docker-compose down

#----------- commandes utiles ------------#

docker-compose stop
docker-compose restart

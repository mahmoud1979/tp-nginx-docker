#!/bin/bash

# Construire l'image
docker build -t demo-nginx .

# Vérifier si un conteneur nommé nginx-demo existe déjà et le supprimer
if [ $(docker ps -a -q -f name=nginx-demo) ]; then
    docker rm -f nginx-demo
fi

# Lancer le conteneur
docker run -d -p 8080:80 --name nginx-demo demo-nginx

echo "Conteneur lancé. Accédez à http://localhost:8080"

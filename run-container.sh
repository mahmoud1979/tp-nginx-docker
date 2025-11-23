 #!/bin/bash

# Construire l'image
docker build -t demo-nginx .

# Verifier si un conteneur nomme nginx-demo existe deja et le supprimer
if [ $(docker ps -a -q -f name=nginx-demo) ]; then
    docker rm -f nginx-demo
fi

# Lancer le conteneur
docker run -d -p 8080:80 --name nginx-demo demo-nginx

echo "Conteneur lance. Accedez a http://localhost:8080"

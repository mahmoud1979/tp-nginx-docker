TP Nginx avec Docker - Guide complet

====================================
1️	Description
====================================
Ce projet illustre l'utilisation d'un Dockerfile pour creer une image Docker avec Nginx et servir une page HTML. Il montre egalement la difference entre Dockerfile et Docker image.

Il explique aussi comment :
- créer les fichiers sous Windows 10
- les uploader sur GitHub
- cloner le projet dans une VM Ubuntu Server
- construire et lancer un conteneur Docker

Contenu du projet :
- Dockerfile : instructions pour construire l'image Docker.
- index.html : page HTML de test.
- run-container.sh : script shell pour construire et lancer le conteneur.
- README.md : documentation du projet.

====================================
2	tructure du projet
====================================
tp-nginx-docker/
│
├── Dockerfile
├── index.html
├── run-container.sh
└── README.md

====================================
2	Créer les fichiers du projet sous Windows 10
====================================

Tu peux créer les fichiers avec Notepad ou Vscode:

	## Avec Bloc-notes (Notepad)

	- Ouvrir Bloc-notes

	- Copier le contenu

	- Enregistrer sous → choisir le nom du fichier (ex : Dockerfile, 	run-container.sh)

	   Important : choisir Tous les fichiers dans le type

	##Avec Visual Studio Code(Recommandé):

	- Créer un dossier tp-nginx-docker

	- Créer les fichiers : Dockerfile, index.html, run-container.sh, README.md

====================================
3	Uploader le projet sur GitHub via le navigateur
====================================
etapes pour mettre le projet sur GitHub

1. Creer un compte GitHub sur https://github.com si ce n’est pas dejà fait.

2. Creer un nouveau repository :
   - Cliquer sur + → New repository
   - Nommer le repository (ex : tp-nginx-docker)
   - Choisir Public ou Private
   - Ne pas cocher “Initialize with README”
   - Cliquer sur Create repository

3. Uploader les fichiers :
   - Cliquer sur Add file → Upload files
   - Glisser-deposer tous les fichiers : Dockerfile, index.html, run-container.sh, README.md
   - Cliquer sur Commit changes

4. Copier l’URL du repository :
   - Cliquer sur Code → HTTPS
   - Copier l’URL (ex : https://github.com/username/tp-nginx-docker.git)

====================================
4	Cloner le projet sur la VM Ubuntu
====================================
Ouvrir un terminal sur la VM et executer :

```bash
git clone <URL_du_projet> tp-nginx-docker
cd tp-nginx-docker
```
> Git cree automatiquement le dossier tp-nginx-docker sur la VM et y place tous les fichiers.


====================================
5	Rendre le script run-container.sh executable
====================================
```bash
chmod +x run-container.sh
```

====================================
6	Lancer le conteneur
====================================
```bash
./run-container.sh
```

> Le script run-container.sh:
- construit l’image demo-nginx à partir du Dockerfile
- supprime le conteneur, si existant, nomme nginx-demo si necessaire
- lance le conteneur avec redirection du port 80 vers le port 8080 de la VM


====================================
7	Verifier que le conteneur fonctionne
====================================
```bash
docker ps
```

====================================
8	Visualiser la page Nginx
====================================

Depuis la VM :
```bash
curl http://localhost:8080
```

Depuis le PC hôte (Windows 10) :
1. Verifier l’adresse IP de la VM :
```bash
ip a
```
2. Ouvrir un navigateur et aller sur :
```
http://<IP_VM>:8080
```

- Vous devriez voir la page HTML avec le texte expliquant Dockerfile vs Docker image.


====================================
9	Notes
====================================
- Le port 8080 de la VM est mappe sur le port 80 du conteneur.
- Le script run-container.sh est reutilisable et supprime automatiquement un conteneur existant avant d’en creer un nouveau.
- Le dossier /var/www/html/ à l’interieur du conteneur est cree automatiquement par Nginx.
- Nginx sert le contenu depuis /var/www/html/ dans le conteneur.



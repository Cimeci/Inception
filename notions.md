# Docker

Docker permet de faire tourner des programmes dans des "boîtes indépendantes" appelées conteneurs.  
Chaque boîte contient tout ce qu’il faut pour que le programme fonctionne, peu importe l’ordinateur.  
C’est pratique pour éviter les bugs liés aux différences entre les machines.

Donc Docker est un enssemble de composant
<details>
<summary><h2>Les Notions Docker</h2></summary>

**Docker Engine** :
- moteur principal qui exécute les conteneurs.

**Docker CLI** :
- interface en ligne de commande `docker` pour manipuler images et conteneurs.

**Image Docker** :
- snapshot figé d’un environnement prêt à tourner.

**Conteneur** :
- instance active d’une image, isolée et indépendante.

**Docker Compose** :
- outil pour décrire et lancer plusieurs conteneurs liés via un fichier YAML.

**Volumes** :
- espaces de stockage persistants attachés aux conteneurs (données conservées même après arrêt).

**Réseaux Docker** :
- réseaux virtuels permettant la communication entre conteneurs dans un environnement isolé.

**Multi-conteneurs** :
- architecture où plusieurs conteneurs collaborent (ex : WordPress + MariaDB + Nginx).

**Isolation et portabilité** :
- chaque conteneur est isolé pour garantir portabilité et indépendance.

**Build et Run** :
- construction d’images avec `docker build` et exécution avec `docker run`.  

</details>

<details>
<summary><h2>DockerFile</h2></summary>

Le Dockerfile est un fichier contenant la recette de creation d'une image Docker d'un service

```FROM``` — Spécifie l’image de base
```
FROM alpine
```
```RUN``` — Exécute une commande lors du build de l’image
```
RUN apk update && apk add nginx
```
```COPY``` — Copie des fichiers locaux vers l’image
```
COPY ./config/nginx.conf /etc/nginx/nginx.conf
```
```ADD``` — Comme COPY mais permet aussi d’extraire des archives ou charger depuis une URL
```
ADD site.tar.gz /var/www/html
```
```CMD``` — Commande exécutée quand le conteneur démarre
```
CMD ["nginx", "-g", "daemon off;"]
```
```ENTRYPOINT``` — Définit le binaire principal (plus strict que CMD)
```
ENTRYPOINT ["ping"]
CMD ["google.com"]  # → Résultat : ping google.com
```
```EXPOSE``` — Documente le port utilisé (ne l’ouvre pas automatiquement)
```
EXPOSE 80
```
```WORKDIR``` — Définit le répertoire de travail pour les instructions suivantes
```
WORKDIR /var/www/html
```
```ENV``` — Crée une variable d’environnement
```
ENV MYSQL_ROOT_PASSWORD=mysecretpassword
```
```VOLUME``` — Marque un dossier comme volume persistant
```
VOLUME /var/lib/mysql
```

</details>

<details>
<summary><h2>Mariadb</h2></summary>

MariaDB est un système de gestion de base de données relationnelle (SGBDR) open source, dérivé de MySQL. Il est conçu pour être entièrement compatible avec MySQL tout en offrant de meilleures performances, de nouvelles fonctionnalités et une sécurité renforcée.

- Remplaçant direct de MySQL.
- Utilisé pour stocker et gérer les données de manière structurée.
- Très utilisé dans les applications web pour gérer les bases de données dynamiques.

</details>

<details>
<summary><h2>Nginx</h2></summary>

Nginx (prononcé "engine-x") est un serveur web léger, performant et open source. Il peut également faire office de reverse proxy, de load balancer et de proxy mail.

- Très rapide et économe en ressources.
- Utilisé pour servir des sites web statiques ou dynamiques.
- Peut faire le lien entre le client et d’autres services comme PHP-FPM ou des serveurs d'applications.


</details>

<details>
<summary><h2>Wordpress</h2></summary>

WordPress est un système de gestion de contenu (CMS) open source, utilisé pour créer et gérer des sites web facilement, sans nécessiter de compétences en développement web.

- Écrit en PHP et utilise une base de données (comme MariaDB).
- Très utilisé pour créer des blogs, sites vitrines ou e-commerce.
- Dispose d'une grande communauté et de nombreux plugins/thèmes pour étendre ses fonctionnalités.


</details>

---

Ces notions couvrent la base nécessaire pour comprendre et réaliser le projet Inception.


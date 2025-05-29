# Docker

Docker permet de faire tourner des programmes dans des "boîtes indépendantes" appelées conteneurs.  
Chaque boîte contient tout ce qu’il faut pour que le programme fonctionne, peu importe l’ordinateur.  
C’est pratique pour éviter les bugs liés aux différences entre les machines.

Donc Docker est un enssemble de composant
<details>
<summary><h2>Les Notions Docker</h2></summary>

## **Docker Engine** :
- moteur principal qui exécute les conteneurs.

## **Docker CLI** :
- interface en ligne de commande `docker` pour manipuler images et conteneurs.

## **Dockerfile** :
- fichier texte définissant étape par étape la construction d’une image Docker.

## **Image Docker** :
- snapshot figé d’un environnement prêt à tourner.

## **Conteneur** :
- instance active d’une image, isolée et indépendante.

## **Docker Compose** :
- outil pour décrire et lancer plusieurs conteneurs liés via un fichier YAML.

## **Volumes** :
- espaces de stockage persistants attachés aux conteneurs (données conservées même après arrêt).

## **Réseaux Docker** :
- réseaux virtuels permettant la communication entre conteneurs dans un environnement isolé.

## **Multi-conteneurs** :
- architecture où plusieurs conteneurs collaborent (ex : WordPress + MariaDB + Nginx).

## **Isolation et portabilité** :
- chaque conteneur est isolé pour garantir portabilité et indépendance.

## **Build et Run** :
- construction d’images avec `docker build` et exécution avec `docker run`.  

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


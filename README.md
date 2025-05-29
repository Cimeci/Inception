# PROJET [42](https://42.fr/en/homepage/) : Inception 🐳 

## 📌 Description

Le projet Inception a pour but de découvrir Docker en créant une infrastructure de services conteneurisés.  
On apprend à construire des images Docker personnalisées et à faire fonctionner plusieurs conteneurs ensemble avec Docker Compose.

## 🧱 Ce que j’ai mis en place

- Un serveur **NGINX** sécurisé en HTTPS
- Un site **WordPress**
- Une base de données **MariaDB**
- Des volumes pour garder les données après redémarrage
- Des réseaux pour isoler les services

## 🔧 Technologies utilisées

- Docker & Docker Compose
- Alpine Linux
- NGINX, WordPress, MariaDB

## 🎯 Objectif

Comprendre comment fonctionne Docker, comment construire ses propres images, et comment faire communiquer plusieurs services entre eux de façon propre et sécurisée.

## 🏗️ La structure du projet

```
inception/
├── srcs/
│   ├── nginx/
│   │   └── Dockerfile
│   ├── wordpress/
│   │   └── Dockerfile
│   └── mariadb/
│       └── Dockerfile
└── docker-compose.yml
```

# [Les Notions](/notions.md)

# [Le projet](/subject.md)

## ©️ Credit

README realise par :
- [inowak--](https://profile.intra.42.fr/users/inowak--), Ilan Nowak--Glandier

Projet realise par :
- [inowak--](https://profile.intra.42.fr/users/inowak--), Ilan Nowak--Glandier

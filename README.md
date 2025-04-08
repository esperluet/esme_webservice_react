# Esme - Application React avec Vite et Docker (Support de Cours)

Ce projet est une application front-end simple construite avec **React** et **Vite**, entièrement exécutée dans des conteneurs **Docker**. Il est conçu pour être utilisé dans le cadre d’un **cours pratique destiné à des étudiants** en développement web ou DevOps. Le projet est prêt à être exploré, modifié, et déployé.

---

## 🎯 Objectif pédagogique

Ce dépôt permet aux étudiants de :
- Comprendre la structure d’une application React moderne.
- Apprendre à utiliser Vite pour le développement rapide.
- Découvrir comment utiliser Docker et Docker Compose pour isoler les environnements.
- Manipuler un `Makefile` pour automatiser les tâches récurrentes.
- Préparer un projet front-end pour le déploiement en production.

---

## 🧭 Étapes à suivre (installation et exécution)

### 1. Cloner le projet

**Avec HTTPS** :
```bash
git clone https://github.com/esperluet/esme_webservice_react.git
```

**Ou avec SSH** :
```bash
git clone git@github.com:esperluet/esme_webservice_react.git
```

Puis :
```bash
cd esme_webservice_react
```

### 2. Lancer l'application en mode développement
```bash
make dev
```
L'application sera accessible sur : [http://localhost:5173](http://localhost:5173)

### 3. Arrêter l'environnement de développement
```bash
make stop
```

### 4. Lancer l'application en mode production (via Nginx)
```bash
make start
```
Accessible sur : [http://localhost:3000](http://localhost:3000)

### 5. Nettoyer les conteneurs et images Docker
```bash
make clean
```

---

## 📁 Structure du projet

```
my-react-app/
├── public/
├── src/
├── Dockerfile
├── docker-compose.yaml
├── Makefile
├── package.json
├── vite.config.js
├── .dockerignore
└── .gitignore
```

---

## ✨ Fonctionnalités principales

- Front-end moderne avec **React + Vite**
- Exécution 100% dans Docker (dev et prod)
- Hot reload via `vite` en mode développement
- Déploiement production avec **Nginx**
- Fichier `Makefile` pour simplifier les commandes
- Prêt pour Git/GitHub

---

## 🛠️ Prérequis

- Docker
- Docker Compose
- (Optionnel) Make

---

## ⚙️ Commandes disponibles

### Développement (hot reload via Vite)
```bash
make dev
```
Accessible sur : [http://localhost:5173](http://localhost:5173)

### Arrêt du développement
```bash
make stop
```

### Build + run en mode production (avec Nginx)
```bash
make start
```
Accessible sur : [http://localhost:3000](http://localhost:3000)

### Nettoyage complet
```bash
make clean
```

---

## 📄 Fichiers importants

### `Dockerfile`
Contient trois étapes :
1. **builder** : build Vite
2. **prod** : exécution avec nginx
3. **dev** : mode développement avec hot reload

### `docker-compose.yaml`
Lance le service `react-app` avec le bon `target`, les volumes, et les ports ouverts.

### `Makefile`
Simplifie les actions : `dev`, `stop`, `start`, `clean`.

---

## 🚀 Déploiement

Tu peux utiliser l'image Docker `esme_my_react_app` pour :
- Un push vers Docker Hub
- Un déploiement sur un serveur cloud (GCP, AWS, etc.)

---

## 👨‍🏫 Contexte pédagogique

Ce projet est utilisé dans le cadre d’un **cours pratique**. Il est destiné à introduire les étudiants aux bonnes pratiques de développement, conteneurisation, et industrialisation d’applications front-end modernes.

Les étudiants sont invités à :
- Explorer la structure du projet
- Modifier les composants React
- Ajouter des routes ou de la logique métier
- Expérimenter avec le Dockerfile
- Préparer des variantes pour le déploiement CI/CD

---

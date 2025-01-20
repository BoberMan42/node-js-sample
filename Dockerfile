# Étape 1 : Utiliser une image Node.js officielle
FROM node:16-alpine

# Étape 2 : Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Étape 3 : Copier les fichiers package.json et package-lock.json (si présent)
COPY package*.json ./

# Étape 4 : Installer les dépendances
RUN npm install

# Étape 5 : Copier le reste des fichiers de l'application
COPY . .

# Étape 6 : Exposer le port utilisé par ton app (exemple : 3000)
EXPOSE 8080

# Étape 7 : Démarrer l'application
CMD ["npm", "start"]

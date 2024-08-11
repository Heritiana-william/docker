# Utilisez l'image officielle Node.js depuis Docker Hub
FROM node:14

# Définissez le répertoire de travail dans le conteneur
WORKDIR /usr/src/app

# Copiez package.json et package-lock.json dans le conteneur
COPY package*.json ./

# Installez les dépendances de l'application
RUN npm install

# Copiez le reste du code source de l'application dans le conteneur
COPY . .

# Exposez le port sur lequel votre application sera lancée
EXPOSE 3000

# Définissez la commande pour lancer votre application
CMD ["node", "app.js"]

Bienvenue sur le repository Rails de Evan Bourgouin

Ce projet crée une base de donnée pour un site similaire à Doctolib.

Il-y-a un model dogsitter et un model dog. Un dogsitter peut promener plusieurs dog à travers un stroll (promenade, en anglais) ; et un dog peut avoir plusieurs dogsitter à travers un stroll.

Il-y-a une table City avec comme attribut city_name. Chaque ville contient plusieurs promeneurs et plusieurs chiens mais un chien et un promeneur ne peuvent appartenir qu'a une ville.

Pour tester l'appli, réalisez les processus suivants :

pour copier le repo sur votre machine

git clone https://github.com/Cyran0/Dogs_Airbnb.git

pour se déplacer dans le bon dossier

cd Dogs_Airbnb/

pour mettre à jour la liste de gems

bundle install

pour que les migrations soient bien effectuées

rails db:migrate

pour pouvoir initialiser et remplir la database

rails db:seed

La base de données complète se trouve (normalement) au chemin d'accès suivant :

Dogs_Airbnb/db/development.sqlite3

Ouvrez-la avec DB Browser ou SQLStudio


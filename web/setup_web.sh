#!/bin/bash

#ask name for projet_folder
echo "Veuillez entrer un nom de projet :"
read nom_projet

#create directory
mkdir $nom_projet
mkdir -p $nom_projet/css $nom_projet/js

#create file 
touch $nom_projet/index.html
touch $nom_projet/js/script.js
touch $nom_projet/css/styles.css
touch $nom_projet/README.md

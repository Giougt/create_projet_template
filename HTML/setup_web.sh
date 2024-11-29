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

#complete file 
#html 
echo "<!DOCTYPE html>
<html lang=\"en\">
<head>
    <meta charset=\"UTF-8\">
    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">
    <title>Document</title>
    <link rel=\"stylesheet\" href=\"css/styles.css\"> 
</head>
<body>
    <script src=\"js/script.js\"></script>
</body>
</html>" >> $nom_projet/index.html

#css
echo "*{
margin: 0;
padding: 0;
}" >> $nom_projet/css/styles.css

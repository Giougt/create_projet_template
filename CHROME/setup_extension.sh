#!/bin/bash

#modèle 
'
my-chrome-extension/
├── manifest.json
├── src/
│   ├── background.js
│   ├── content.js
│   └── popup/
│       ├── popup.html
│       ├── popup.js
│       └── styles.css
├── public/
│   ├── images/
│   └── styles/
└── icons/
    ├── icon16.png
    ├── icon48.png
    └── icon128.png
'

#ask name for projet_folder
echo "Veuillez entrer un nom de projet :"
read nom_projet

#create directory
mkdir $nom_projet/src $nom_projet/public $nom_projet/icons  
mkdir $nom_projet/src/popup  $nom_projet/public/images $nom_projet/public/styles

#create file 
touch $nom_projet/src/popup/popup.html $nom_projet/src/popup/popup.js $nom_projet/src/popup/styles.css
touch $nom_projet/src/background.js $nom_projet/src/content.js 
touch $nom_projet/manifest.json


#complete file html 
echo "<!DOCTYPE html>
<html lang=\"en\">
<head>
    <meta charset=\"UTF-8\">
    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">
    <title>Document</title>
    <link rel=\"stylesheet\" href=\"../../public/styles/styles.css\">
</head>
<body>
    <script src=\"../popup/popup.js\"></script>
</body>
</html>" >> $nom_projet/src/popup/popup.html

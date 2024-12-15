#!/bin/bash

#modèle 
'
my-chrome-extension/
├── manifest.json
├── README.md
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
    ├── iconExemple.png
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
touch $nom_projet/README.md

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

#complete file manifest
echo "{
  \"manifest_version\": 3,
  \"name\": \" \",
  \"version\": \"1.0.0\",
  \"description\": \" \",
  \"icons\": {
    \"48\": \" \",
    \"128\": \" \"
  },
  \"content_scripts\": [
    {
      \"js\": [
        \"/src/content.js\"
      ],
      \"matches\": [
        \" site \"
      ]
    }
  ],
}
" >> $nom_projet/manifest.json

Description :
Cet outil permet de chiffrer des fichiers sur une machine windows compromise à l'aide de scripts batch (.bat). 

Les deux fichiers principaux de cet outil sont :

HARansom.bat : Ce script chiffre tous les fichiers d'un dossier spécifié et crée un fichier note.txt contenant des informations sur le chiffrement.
HADecrypt.bat : Ce script déchiffre les fichiers précédemment chiffrés en utilisant la clé de déchiffrement.

Fonctionnalités :
Chiffrement de fichiers : Le script HARansom.bat chiffre tous les fichiers d'un dossier, à l'exception des fichiers batch.
Création d'une note : Un fichier note.txt est généré pour informer la victime que les fichiers ont été chiffrés.

Déchiffrement : Le script HADecrypt.bat permet de déchiffrer les fichiers chiffrés et de restaurer leur nom d'origine.

Usage : 

- Chiffrement :
Pour chiffrer c'est simple utilisez juste la commande :
HARansom.bat

Ce script va :
* Vérifier la présence de fichiers à chiffrer.
* Générer une clé de déchiffrement.
* Créer un fichier note.txt avec des instructions.
* Chiffrer les fichiers et supprimer les originaux. 

- Déchiffrement :
Pour le déchiffrement aussi utilisez juste la commande :
HADecrypt

Ce script va :
* Vérifier l'existence du fichier note.txt.
* Lire la clé de déchiffrement.
* Déchiffrer les fichiers et supprimer les fichiers chiffrés.

Avertissements :

* Utilisez cet outil de manière responsable. Le chiffrement de fichiers sans autorisation peut être illégal.
* Utilisez le dans un environnement dont vous etes l'unique propriètaire.

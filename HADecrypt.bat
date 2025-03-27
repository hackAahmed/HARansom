@echo off
setlocal

rem Lire la clé de déchiffrement depuis note.txt
set "key="
for /f "tokens=2 delims=:" %%a in ('findstr "Clé de déchiffrement" note.txt') do set "key=%%a"

if not defined key (
    echo La clé de déchiffrement n'a pas été trouvée dans note.txt.
    exit /b
)

rem Déchiffrer les fichiers
for %%f in (*.enc) do (
    certutil -decode "%%f" "%%~nf"
    echo Fichier %%f déchiffré en %%~nf
    del "%%f"
)

echo Tous les fichiers ont été déchiffrés avec succès.
pause
endlocal

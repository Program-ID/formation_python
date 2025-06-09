@echo off
REM === Création d'un nouveau TP Python (Windows) ===

echo.
echo === Création d'un nouveau TP Python ===
echo.

REM Demande du numéro
set /p TP_NUM=Numéro du TP (ex: 1) : 
if "%TP_NUM%"=="" (
    echo ❌ Le numéro du TP est obligatoire.
    pause
    exit /b
)

REM Demande du nom
set /p TP_NOM=Nom du TP (ex: variables) : 
if "%TP_NOM%"=="" (
    echo ❌ Le nom du TP est obligatoire.
    pause
    exit /b
)

REM Lancement du script Python
echo.
echo ▶️ Création du TP : %TP_NUM% - %TP_NOM%
python scripts\init_tp.py %TP_NUM% %TP_NOM%

pause
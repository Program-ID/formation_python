@echo off
REM === Création d'un nouveau TP Python (Windows) ===

echo.
set /p TP_NUM=Numéro du TP (ex: 1) : 
set /p TP_NOM=Nom du TP (ex: variables) : 

python scripts\init_tp.py %TP_NUM% %TP_NOM%

pause
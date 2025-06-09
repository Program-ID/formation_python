#!/bin/bash
# === Création d'un nouveau TP Python (Unix / WSL) ===

echo
read -p "Numéro du TP (ex: 1) : " TP_NUM
read -p "Nom du TP (ex: variables) : " TP_NOM

python3 scripts/init_tp.py "$TP_NUM" "$TP_NOM"
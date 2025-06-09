#!/bin/bash
# === Création d'un nouveau TP Python (macOS double-clic) ===

# Ouvre une fenêtre Terminal si double-cliqué depuis le Finder
cd "$(dirname "$0")"

read -p "Numéro du TP (ex: 1) : " TP_NUM
read -p "Nom du TP (ex: variables) : " TP_NOM

python3 scripts/init_tp.py "$TP_NUM" "$TP_NOM"

read -n 1 -s -r -p "Appuie sur une touche pour quitter..."
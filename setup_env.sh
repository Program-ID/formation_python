#!/bin/bash
echo "🛠️ Initialisation de l'environnement Python"
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
echo "✅ Environnement prêt !"

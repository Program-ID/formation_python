#!/bin/bash
echo "🛠️ Initialisation de l'environnement Python (Windows)"

# Vérifie que Python est bien installé
if ! command -v python &> /dev/null; then
    echo "❌ Python n'est pas installé ou non trouvé dans le PATH"
    exit 1
fi

# Crée l'environnement virtuel
python -m venv venv

# Vérifie que l'environnement a bien été créé
if [ ! -f "venv/Scripts/activate" ]; then
    echo "❌ Échec de la création de l'environnement virtuel"
    exit 1
fi

# Active l'environnement (Windows)
source venv/Scripts/activate

# Installe les dépendances
pip install -r requirements.txt

echo "✅ Environnement prêt !"

#!/bin/bash
echo "🛠️ Initialisation de l'environnement Python (Unix/Linux/macOS)"

if ! command -v python3 &> /dev/null; then
    echo "❌ Python3 est requis mais non trouvé dans le PATH"
    exit 1
fi

python3 -m venv venv

if [ ! -f "venv/bin/activate" ]; then
    echo "❌ Échec de la création de l'environnement virtuel"
    exit 1
fi

source venv/bin/activate

pip install -r requirements.txt

echo "✅ Environnement prêt !"

#!/usr/bin/env python3
from pathlib import Path
import os

def afficher_structure():
    print("📁 Structure des dossiers :")
    base = Path(__file__).resolve().parent.parent
    for folder in ['docs', 'demos', 'exercices', 'solutions', 'ressources', 'scripts']:
        chemin = base / folder
        if chemin.exists():
            print(f"📂 {chemin.relative_to(base)}")
            for f in sorted(chemin.glob("**/*")):
                if f.is_file():
                    print(f"   └── {f.relative_to(base)}")

if __name__ == "__main__":
    print("🚀 Initialisation du projet Python")
    afficher_structure()
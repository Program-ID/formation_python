import os      # Module standard pour interagir avec le système de fichiers
import sys     # Pour récupérer les arguments passés en ligne de commande
from pathlib import Path  # Pour manipuler les chemins de fichiers de manière moderne et portable

# === TEMPLATES ===

# Modèle de README.md injecté dans chaque TP
TEMPLATE_README = """\
# TP {numero:02d} – {titre}
...
"""

# Contenu de base pour le fichier main.py du TP
TEMPLATE_MAIN = """\
# Ton code ici
"""

def init_tp(numero, titre_slug):
    titre = titre_slug.replace('_', ' ').capitalize()
    base_path = Path(__file__).resolve().parents[1]

    # Chemins vers les dossiers à créer
    tp_dir = base_path / "exercices" / f"{numero:02d}_{titre_slug}"
    sol_dir = base_path / "solutions" / f"{numero:02d}_{titre_slug}"
    tp_dir.mkdir(parents=True, exist_ok=True)
    sol_dir.mkdir(parents=True, exist_ok=True)

    # Création des fichiers du TP
    (tp_dir / "main.py").write_text(TEMPLATE_MAIN, encoding="utf-8")
    (tp_dir / "README.md").write_text(
        TEMPLATE_README.format(numero=numero, titre=titre),
        encoding="utf-8"
    )

    # Création du fichier solution vide
    (sol_dir / "main.py").write_text(TEMPLATE_MAIN, encoding="utf-8")

    print(f"✅ TP {numero:02d} – '{titre}' créé.")

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("❌ Utilisation incorrecte :")
        print("    python scripts/init_tp.py <numéro> <nom_du_tp_slug>")
        print("Exemple : python scripts/init_tp.py 0 hello_world")
    else:
        num = int(sys.argv[1])
        slug = sys.argv[2]
        init_tp(num, slug)



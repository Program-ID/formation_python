---

### 📄 Contenu à **copier intégralement** :

```markdown
# 🐍 Formation Python – Projet de base

Bienvenue dans ce dépôt de formation Python, structuré pour un usage pédagogique, modulaire et professionnel.

---

## 🗂️ Arborescence du projet

```

formation\_python/
├── README.md               ← Présentation du projet
├── setup\_env.sh            ← Script d'init Windows (Git Bash)
├── setup\_env\_unix.sh       ← Script d'init Unix/macOS/WSL
├── requirements.txt        ← Dépendances Python
├── .gitignore              ← Fichiers ignorés
├── .gitattributes          ← Politique des fins de ligne
├── docs/                   ← Cours en Markdown
├── demos/                  ← Démos Python par thème
├── exercices/              ← Exercices à faire
├── solutions/              ← Corrigés des exercices
├── ressources/             ← Images, CSV, annexes
└── scripts/                ← Outils internes (voir ci-dessous)

````

---

## 🔧 Outils internes (`scripts/`)

### `init_dossier.py`

Affiche l’arborescence actuelle du projet.  
Utile pour valider la structure du dépôt.

```bash
python scripts/init_dossier.py
````

---

### `fix_eol.sh`

Corrige les fins de ligne (CRLF → LF) pour compatibilité Git/Linux.

```bash
./scripts/fix_eol.sh            # Corrige les fichiers
./scripts/fix_eol.sh --dry-run  # Simule sans modifier
```

---

## 🚀 Démarrage rapide

### 💻 Initialisation multi-plateforme

| Plateforme            | Script à exécuter     |
| --------------------- | --------------------- |
| 🪟 Windows (Git Bash) | `./setup_env.sh`      |
| 🐧 Unix/macOS/WSL     | `./setup_env_unix.sh` |

> Ces scripts créent un environnement virtuel `venv/` et installent les dépendances du projet.

---

### ▶️ Ensuite

1. Active l’environnement virtuel :

* **Windows** :

```bash
source venv/Scripts/activate
```

* **Unix/macOS** :

```bash
source venv/bin/activate
```

2. Vérifie que Python fonctionne :

```bash
python --version
pip --version
```

---

## 🎯 Objectifs pédagogiques

Ce dépôt est conçu pour :

* organiser une formation Python modulaire
* faciliter l’installation sur toutes plateformes
* proposer cours, exercices, démos et outils intégrés

````

---


##  ✍️ Auteur
Nom : Laurent Ferrer
GitHub : https://github.com/Program-ID/GIT-PROJECT.git
Contact : mail.laurent.ferrer@gmail.com

---
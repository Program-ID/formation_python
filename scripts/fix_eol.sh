#!/bin/bash
echo "🔧 Correction des fins de ligne en LF (Unix) pour les fichiers texte"

# Extensions concernées
EXTENSIONS="sh py md csv"

# Parcours de tous les fichiers concernés
for ext in $EXTENSIONS; do
    find . -type f -name "*.${ext}" -exec dos2unix {} \;
done

echo "✅ Tous les fichiers concernés ont été convertis en LF"

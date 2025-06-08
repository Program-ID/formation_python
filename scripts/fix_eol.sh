#!/bin/bash

echo "🔧 Correction des fins de ligne en LF (Unix)"
DRY_RUN=false

# Vérifie si --dry-run est passé
if [[ "$1" == "--dry-run" ]]; then
    DRY_RUN=true
    echo "🧪 Mode simulation activé (aucun fichier ne sera modifié)"
fi

EXTENSIONS="sh py md csv"

for ext in $EXTENSIONS; do
    find . -type f -name "*.${ext}" | while read -r file; do
        if $DRY_RUN; then
            echo "🔍 $file"
        else
            echo "🧹 $file"
            dos2unix "$file" > /dev/null
        fi
    done
done

echo "✅ Fins de ligne en LF conformes"
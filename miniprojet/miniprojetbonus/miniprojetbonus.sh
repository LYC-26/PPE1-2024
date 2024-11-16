#!/usr/bin/env bash

# Vérifier si un argument est fourni
if [[ -z "$1" ]]; then
    echo "Veuillez fournir un chemin de fichier en tant qu'argument."
    exit 1
fi

input_file="$1"

# Utiliser respectivement les commmandes grep et tr pour obtenir les mots par ligne, et nettoyer le texte 
grep -oE '\w+' "$input_file" | tr '[:upper:]' '[:lower:]' | tr -d '[:punct:]'
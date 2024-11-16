#!/usr/bin/env bash

# Vérifier si un argument est fourni
if [[ -z "$1" ]]; then
    echo "Veuillez fournir un chemin de fichier en tant qu'argument."
    exit 1
fi

# Obtenir le chemin du fichier
input_file="$1"

# Utiliser la commande paste pour obtenir les bigrams
paste -d ' ' - - < "$input_file" | sort | uniq -c | sort -nr
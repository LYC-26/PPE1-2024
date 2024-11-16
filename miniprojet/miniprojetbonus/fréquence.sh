#!/usr/bin/env bash

# Vérifier si un argument est fourni
if [[ -z "$1" ]]; then
    echo "Veuillez fournir un chemin de fichier en tant qu'argument."
    exit 1
fi

# Obtenir le chemin du fichier et l'argument de la fréquence
input_file="$1"
num_words=${2:-25} # les 25 plus fréquents par défaut

# Faire appel au script miniprojetbonus.sh
processed_words=$(./miniprojetbonus.sh "$input_file")

# Calculer la fréquence des mots et afficher les mots les plus fréquents
echo "Les $num_words mots les plus fréquents sont :"
echo "$processed_words" | sort | uniq -c |sort -nr | head -n "$num_words"

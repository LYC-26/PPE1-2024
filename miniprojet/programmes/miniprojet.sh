#!/usr/bin/env bash

# 2.1 Vérifier si un argument est fourni
if [[ -z "$1" ]]; then
    echo "Veuillez fournir un chemin de fichier en tant qu'argument."
    exit 1
fi

echo "Le fichier à lire : $1"

# Définir le chemin du fichier de sortie
output_file="/Users/liuyongcan/Exercice2/PPE1-2024/miniprojet/tableaux/tableau-fr.tsv"

# Ajouter l'en-tête du fichier
echo -e "Numéro de ligne\tCode HTTP\tEncodage\tNombre de mots\tURL" > "$output_file"

# Initialiser un compteur de lignes
line_number=1

# Lire les lignes du fichier et affichier chaque ligne avec ses numéro et code HTTP et l'encodage
while read -r line
do
    # Obtenir le code HTTP de la requête
    http_code=$(curl -o /dev/null -s -w "%{http_code}" "$line")
    
    # Obtenir l'encodage de la page si disponible
    content_type=$(curl -sI "$line" | grep -i "Content-Type")
    if [[ "$content_type" =~ charset=([a-zA-Z0-9-]+) ]]; then
       encoding="${BASH_REMATCH[1]}"
    else
       encoding="N/A" #Si l'encodage n'est pas trouvé
    fi
    
    # Obtenir le contenu de la page et compter les mots
    nombre_de_mot=$(curl -sL "$line" | wc -w)
    
    # Afficher le numéro de ligne, le code HTTP, l'encodage, le nombre de mot et l'URL et ajouter le résultat dans le fichiers de sortie
	echo -e "$line_number\t$http_code\t$encoding\t$nombre_de_mot\t$line" >> "$output_file"
	
	# Incrémenter le compteur de lignes
	((line_number++))
done < "$1"

echo "Le fichier tableau-fr.tsv a été généré avec succès dans $output_file."

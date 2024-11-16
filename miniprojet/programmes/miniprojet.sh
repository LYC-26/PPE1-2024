#!/usr/bin/env bash

# 2.1 Vérifier si un argument est fourni
if [[ -z "$1" ]]; then
    echo "Veuillez fournir un chemin de fichier en tant qu'argument."
    exit 1
fi

echo "Le fichier à lire : $1"

# Définir le chemin du fichier de sortie HTML
output_file="/Users/liuyongcan/Exercice2/PPE1-2024/miniprojet/tableaux/tableau-fr.html"

# Ajouter l'en-tête du fichier HTML
echo "<html>" > "$output_file"
echo "<head><title>Tableau des Données</title></head>" >> "$output_file"
echo "<meta charset='UTF-8'>" >> "$output_file"  # UTF-8
echo "<body>" >> "$output_file"
echo "<h1>Tableau des Données</h1>" >> "$output_file"
echo "<table border='1'>" >> "$output_file"
echo "<tr><th>Numéro de ligne</th><th>Code HTTP</th><th>Encodage</th><th>Nombre de mots</th><th>URL</th></tr>" >> "$output_file"

# Initialiser un compteur de lignes
line_number=1

# Fonction pour échapper les caractères spéciaux pour le HTML
escape_html() {
    echo "$1" | sed -e 's/&/&amp;/g' -e 's/"/&quot;/g' -e 's/</&lt;/g' -e 's/>/&gt;/g'
}

# Lire les lignes du fichier et affichier chaque ligne avec ses numéro et code HTTP et l'encodage
while read -r line
do
    # Echapper l'URL pour le HTML
    escaped_url=$(escape_html "$line")
    
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
    
    # Ajouter une ligne dans le fichier HTML pour chaque URL
	echo "<tr><td>$line_number</td><td>$http_code</td><td>$encoding</td><td>$nombre_de_mot</td><td><a href=\"$escaped_url\" target=\"_blank\">$escaped_url</a></td></tr>" >> "$output_file"
	
	# Incrémenter le compteur de lignes
	((line_number++))
done < "$1"

# Ajouter la fin du fichier HTML
echo "</table>" >> "$output_file"
echo "</body>" >> "$output_file"
echo "</html>" >> "$output_file"

echo "Le fichier tableau-fr.html a été généré avec succès dans $output_file."

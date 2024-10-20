#!/bin/bash

if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <année> <mois> <nombre_de_lieux>"
    exit 1
fi

ANNEE=$1
MOIS=$2
NOMBRE_DE_LIEUX=$3
DIRECTORY="$HOME/Exercice1/ann"

if [[ ! "$ANNEE" =~ ^[0-9]{4}$ && "$ANNEE" != "*" ]]; then
    echo "Erreur: L'année doit être un nombre à 4 chiffres ou '*' pour tous les ans."
    exit 1
fi

if [[ ! "$MOIS" =~ ^[0-9]{2}$ && "$MOIS" != "*" ]]; then
    echo "Erreur: Le mois doit être un nombre à 2 chiffres (01 à 12) ou '*' pour tous les mois."
    exit 1
fi

if ! [[ "$NOMBRE_DE_LIEUX" =~ ^[0-9]+$ ]] || [ "$NOMBRE_DE_LIEUX" -le 0 ]; then
    echo "Erreur: Le nombre de lieux doit être un nombre entier positif."
    exit 1
fi

for annee in $(ls "$DIRECTORY"); do
    if [[ "$ANNEE" == "*" || "$ANNEE" == "$annee" ]]; then
        for mois_dir in $(ls "$DIRECTORY/$annee"); do
            if [[ "$MOIS" == "*" || "$MOIS" == "$mois_dir" ]]; then
                echo "Classement des lieux pour l'année $annee et le mois $mois_dir :"

                grep -h "Location" "$DIRECTORY/$annee/$mois_dir"/*.ann | \
                awk '{for (i=5; i<=NF; i++) printf "%s ", $i; print ""}' | \
                sort | \
                uniq -c | \
                sort -nr | \
                head -n "$NOMBRE_DE_LIEUX"
            fi
        done
    fi
done

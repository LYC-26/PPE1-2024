#!/bin/bash

# Vérification des arguments
if [ "$#" -ne 1 ]; then
    echo "Utilisation : $0 <type_d'entité>"
    exit 1
fi

TYPE_ENTITE=$1

# Définir les années à traiter
ANNEES=(2016 2017 2018)

# Lancer le script compte_par_type.sh pour chaque année
for ANNEE in "${ANNEES[@]}"; do
    COMPTE=$(./compte_par_type.sh "$ANNEE" "$TYPE_ENTITE")
    echo "$ANNEE: $COMPTE"
done

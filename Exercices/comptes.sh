#!/bin/bash

annees=(2016 2017 2018)

declare -A compteurs

for annee in "${annees[@]}"; do
    compteurs[$annee]=0 
    for fichier in ~/Exercice1/ann/$annee/*/*.ann; do
        compteurs[$annee]=$((compteurs[$annee] + $(grep -c "Location" "$fichier")))
    done
done

for annee in "${annees[@]}"; do
    echo "Annotations en $annee : ${compteurs[$annee]}"
done

#!/bin/bash

# Vérification des arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <année> <type_d'entité>"
    exit 1
fi

ANNEE=$1
TYPE_ENTITE=$2
DIRECTORY="$HOME/Exercice1/ann/$ANNEE"

# 验证年份
if [[ ! "$ANNEE" =~ ^[0-9]{4}$ ]]; then
    echo "Erreur: L'année doit être un nombre à 4 chiffres."
    exit 1
fi

# 验证类型
if [[ ! "$TYPE_ENTITE" =~ ^(Location|Person|Organization)$ ]]; then
    echo "Erreur: Le type d'entité doit être 'Location', 'Person' ou 'Organization'."
    exit 1
fi

# 检查年份目录是否存在
if [ ! -d "$DIRECTORY" ]; then
    echo "Le répertoire pour l'année $ANNEE n'existe pas."
    exit 1
fi

# 统计该类型的实体数量
count=$(grep -r "$TYPE_ENTITE" "$DIRECTORY"/*/*.ann | wc -l)
echo "$count"
# Journal de bord du projet encadré
## Travail sur Git et la manipulation de fichiers
Aujourd'hui, j'ai organisé les points de connaissance du cours 2 et pratiqué comment utiliser Git.

nothing special
nothing special
nothing special
# Séance 3
## pipelines
Hier après-midi, j’ai passé plusieurs heures à terminer le devoir sur les 
pipelines. Honnêtement, après avoir révisé le contenu du cours, j’étais 
assez confiante et pensais pouvoir le finir en deux heures. Mais en 
réalité, mon code ne cessait d’échouer à cause de petits détails, et les 
résultats obtenus n’étaient jamais conformes aux attentes.

Par exemple, avant de réussir à exécuter correctement la commande suivante 
:`count_locations=$(cat ~/Exercice1/ann/2016/*/*.ann | grep "Location" | 
wc -l)`, je n'avais pas réalisé que le dossier "2016" contenait 12 
sous-dossiers, un pour chaque mois. Au début, j’ai directement essayé avec 
`2016/*.ann`, ce qui, bien sûr, ne pouvait pas fonctionner. Mais il m’a 
fallu beaucoup de temps pour identifier cette erreur.

D’autres situations similaires se sont présentées. Par exemple, lors de 
l’extraction des Locations par ordre de tri, je n’arrivais pas à obtenir 
une liste de toponymes pure, car je ne savais pas bien utiliser la 
commande `cut`. Le résultat contenait constamment des mots parasites comme 
"de", "le", "des", etc.

J’ai également rencontré des problèmes dus à des fautes de frappe dans les 
commandes, ce qui a bloqué mon avancée. Par exemple, au lieu de taper 
`touch locations.txt`, j’ai accidentellement écrit `touch 
locacations.txt`.

Bref, le processus pour terminer cet exercice n’a vraiment pas été fluide. 
Cependant, c’est justement grâce à ces essais répétés que j’ai pu 
approfondir ma compréhension de l’utilisation de ces commandes. Bien sûr, 
j’espère que le devoir de la semaine prochaine se passera plus facilement.

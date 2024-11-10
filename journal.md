# Journal de bord du projet encadré
## Travail sur Git et la manipulation de fichiers
Aujourd'hui, j'ai organisé les points de connaissance du cours 2 et pratiqué comment utiliser Git.

nothing special
nothing special
nothing special

# 14/10/2024 (Cette ligne doit rester après correction)
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

## Git II : corriger des erreurs
À cet instant, je suis en train d'éditer dans le fichier `oups.md` le 
journal concernant la section "Git II : corriger des erreurs", dans le 
cadre de la troisième partie de cet exercice. Jusqu'à présent, je ne suis 
pas très certaine de `l'Exercice 2.b Défaire le commit`, il semble que 
j'ai seulement annulé l'information "I AM ERROR", mais le contenu auquel 
cette information se réfère est toujours présent dans mon journal. 
<<<<<<< HEAD
J'espère pouvoir clarifier cette confusion par la suite.

Je vais mettre cette ligne de côté.

=======
J'espère pouvoir clarifier cette confusion par la suite. 
correction d’erreurs
>>>>>>> 2f1e370bcd320fd0e7fb83f44f8fbc757531cdcb

# Séance 4
## Le foctionnement du code de la dernière diapo
Ce script Bash est utilisé pour vérifier si chaque ligne d'un fichier 
correspond à un format d'URL valide. Lors de l'exécution, l'utilisateur 
doit passer le nom d'un fichier contenant des URL comme argument au 
script. Si le nombre d'arguments passés n'est pas égal à 1, le script 
affichera "ce programme demande un argument" et se terminera. Ensuite, le 
script initialise deux calculatrices (OK et NOK) à 0 pour compter les URL 
valides et invalides. À l'aide d'une boucle while, il lit le contenu du 
fichier ligne par ligne et utilise une expression régulière pour vérifier 
si chaque ligne commence par http:// ou https://. Si c'est le cas, la 
calculqtrice OK est incrémentée ; sinon, l'autre calculatrice NOK est 
incrémentée. 
Enfin, le script affiche le nombre d'URL valides et le nombre de lignes 
douteuses.

## scripts
Grâce au script, je peux voir plus clairement quelles commandes j'ai 
effectivement exécutées. Bien que la commande `history` puisse également 
être utilisée dans l'environnement zsh pour voir les commandes, un fichier 
script peut présenter ces informations de manière plus claire sur une 
seule page, notamment grâce à l'indentation, qui montre les relations 
entre les différentes boucles. Cela me permet également de trouver plus 
rapidement la raison pour laquelle une commande ne fonctionne pas, me 
permettant ainsi de corriger les erreurs en temps utile et d'améliorer mon 
efficacité au travail.

# Séance 6
La programmation est vraiment un travail qui demande beaucoup de soin et de 
patience ! Par exemple, dès la première étape, j'ai oublié de remplacer le nom 
du fichier par le paramètre ` $1 `, ce qui a empêché le code de s'exécuter. 
Mais comme j'étais trop pressée, je n'ai pas remarqué cette erreur et j'y suis 
restée bloquée pendant un long moment. Ensuite, j'ai aussi oublié d'ajouter ` > 
"$output_file" `, ce qui empêchait d’ajouter l’en-tête dans le fichier 
tableau-fr.tsv. Et surtout, j'ai oublié d'ajouter ` >> "$output_file" ` à la 
fin, ce qui faisait que les résultats ne s'importaient pas dans le fichier 
`tableau-fr.tsv`. Je pensais que cet exercice ne serait pas très complexe, mais 
à cause de mon manque d'attention, j'ai pris beaucoup de temps.

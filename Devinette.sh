#!/bin/bash

nombre_mystere=40
essais_max=10
essais=0

echo "Bienvenue dans le jeu du nombre mystère ! Devinez un >

while ((essais < essais_max)); do
    echo  "Votre proposition : "
        read proposition

    if ! [[ "$proposition" =~ ^[0-9]+$ ]] || ((proposition >
        echo "Erreur : Entrez un nombre entre 1  et 100."
        continue
    fi

    ((essais++))

    if ((proposition < nombre_mystere)); then
        echo "Plus grand !"
    elif ((proposition > nombre_mystere)); then
        echo "Plus petit !"
    else
        echo "Bravo ! Vous avez trouvé en $essais essais."
        exit 0
    fi
    done

echo "Dommage... Le nombre était $nombre_mystere. Essayez encore !"

#!/bin/bash : Indique que le script utilise Bash.

#nombre_mystere=40 : Définit le nombre à deviner.

#essais_max=10 : Nombre maximum de tentatives.

#essais=0 : Initialise le compteur d'essais.
#while ((essais < essais_max)) : Continue tant qu'il reste des essais.
#while true : Boucle infinie pour valider l'entrée
#[[ -z "$proposition" ]] : Vérifie si l'entrée est vide.

#=~ ^[0-9]+$ : Vérifie que l'entrée est un nombre entier.

#((proposition < 1 || proposition > 100)) : Vérifie l'intervalle 1-100.
#((essais++)) : Incrémente le compteur.
#Plus grand ! si la proposition est trop petite.

#Plus petit ! si elle est trop grande.

#Bravo ! si trouvé → termine le script (exit 0).


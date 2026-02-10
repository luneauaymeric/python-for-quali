compteur = 0
mot_recherche = "python"
phrase = input("Écrivez une phrase: ")
phrase_min = phrase.lower()
liste_mots = phrase_min.split(" ")
nombre_mots = len(liste_mots)
print("Il y a %d mots" % nombre_mots)
for mot in liste_mots:
    if mot == mot_recherche:
        compteur = compteur + 1
print("Il y a %d fois le mot Python"%compteur)

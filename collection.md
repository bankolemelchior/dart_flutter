En Dart, les collections sont des structures de données intégrées qui permettent de stocker et manipuler des groupes d'éléments. Il existe plusieurs types de collections, chacun ayant des méthodes associées pour faciliter les opérations courantes comme l'ajout, la suppression ou la recherche d'éléments. Voici un aperçu des collections les plus courantes en Dart et leurs méthodes associées.

## 1. List

Une List est une collection ordonnée d'éléments qui peut contenir des valeurs en double. Les listes en Dart sont indexées, et elles peuvent être de taille fixe ou modifiable (growable).

Principales méthodes associées aux List :
✅add(element) : Ajoute un élément à la fin de la liste.
✅addAll(iterable) : Ajoute tous les éléments d'un Iterable à la fin de la liste.
✅insert(index, element) : Insère un élément à une position spécifique.
✅insertAll(index, iterable) : Insère tous les éléments d’un Iterable à une position spécifique.
✅remove(element) : Supprime la première occurrence d’un élément.
📍removeAt(index) : Supprime l'élément à un index spécifique.
📍removeLast() : Supprime et renvoie le dernier élément de la liste.
📍removeWhere((element) => condition) : Supprime tous les éléments qui remplissent une certaine condition.
📍clear() : Supprime tous les éléments de la liste.
📍indexOf(element) : Renvoie l'index de la première occurrence d'un élément.
📍lastIndexOf(element) : Renvoie l'index de la dernière occurrence d'un élément.
📍sort([compare]) : Trie les éléments de la liste en place.
📍reversed : Renvoie un Iterable qui itère sur la liste dans l'ordre inverse.
📍length : Renvoie la longueur de la liste.
📍isEmpty : Renvoie true si la liste est vide.
📍isNotEmpty : Renvoie true si la liste contient des éléments.
📍map((element) => newElement) : Applique une fonction à chaque élément de la liste et renvoie un nouvel Iterable.
📍where((element) => condition) : Renvoie un Iterable avec les éléments qui remplissent une certaine condition.

## 2. Set

Un Set est une collection d'éléments uniques, c'est-à-dire qu'il ne contient pas de doublons. Contrairement à une liste, un Set n'est pas ordonné.

Principales méthodes associées aux Set :
add(element) : Ajoute un élément au Set.
addAll(iterable) : Ajoute tous les éléments d’un Iterable au Set.
remove(element) : Supprime un élément du Set.
contains(element) : Vérifie si le Set contient un élément.
clear() : Supprime tous les éléments du Set.
length : Renvoie le nombre d'éléments dans le Set.
isEmpty : Renvoie true si le Set est vide.
isNotEmpty : Renvoie true si le Set contient des éléments.
intersection(Set other) : Renvoie un nouveau Set contenant les éléments communs avec un autre Set.
union(Set other) : Renvoie un nouveau Set contenant tous les éléments de ce Set et d'un autre Set.
difference(Set other) : Renvoie un nouveau Set contenant les éléments de ce Set qui ne sont pas dans un autre Set.

## 3. Map

Un Map est une collection d'éléments sous forme de paires clé-valeur. Chaque clé doit être unique, mais plusieurs valeurs peuvent être associées à des clés différentes.

Principales méthodes associées aux Map :
putIfAbsent(key, () => value) : Ajoute une entrée si la clé n'existe pas déjà.
update(key, (value) => newValue) : Met à jour la valeur associée à une clé spécifique.
remove(key) : Supprime l'entrée associée à la clé.
clear() : Supprime toutes les paires clé-valeur.
containsKey(key) : Vérifie si la Map contient une clé.
containsValue(value) : Vérifie si la Map contient une valeur.
keys : Renvoie un Iterable contenant toutes les clés du Map.
values : Renvoie un Iterable contenant toutes les valeurs du Map.
length : Renvoie le nombre de paires clé-valeur dans la Map.
isEmpty : Renvoie true si la Map est vide.
isNotEmpty : Renvoie true si la Map contient des éléments.

## 4. Queue

Une Queue est une collection ordonnée qui permet d’ajouter des éléments à la fin et de les supprimer au début (FIFO - First In First Out).

Principales méthodes associées aux Queue :
add(element) : Ajoute un élément à la fin de la queue.
addFirst(element) : Ajoute un élément au début de la queue.
addLast(element) : Ajoute un élément à la fin de la queue.
removeFirst() : Supprime et renvoie le premier élément.
removeLast() : Supprime et renvoie le dernier élément.
length : Renvoie la taille de la queue.
isEmpty : Renvoie true si la queue est vide.
isNotEmpty : Renvoie true si la queue contient des éléments.

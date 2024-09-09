En Dart, les collections sont des structures de données intégrées qui permettent de stocker et manipuler des groupes d'éléments. Il existe plusieurs types de collections, chacun ayant des méthodes associées pour faciliter les opérations courantes comme l'ajout, la suppression ou la recherche d'éléments. Voici un aperçu des collections les plus courantes en Dart et leurs méthodes associées.

1. List
Une List est une collection ordonnée d'éléments qui peut contenir des valeurs en double. Les listes en Dart sont indexées, et elles peuvent être de taille fixe ou modifiable (growable).

Principales méthodes associées aux List :
📍add(element) : Ajoute un élément à la fin de la liste.
📍addAll(iterable) : Ajoute tous les éléments d'un Iterable à la fin de la liste.
📍insert(index, element) : Insère un élément à une position spécifique.
📍insertAll(index, iterable) : Insère tous les éléments d’un Iterable à une position spécifique.
  📍remove(element) : Supprime la première occurrence d’un élément.
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
  📍map((element) => newElement) : Applique une fonction à chaque élément de la liste et renvoie un nouvel      Iterable.
  📍where((element) => condition) : Renvoie un Iterable avec les éléments qui remplissent une certaine condition.
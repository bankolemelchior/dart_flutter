# Cours Complet sur les Collections en Dart

## 1. Introduction aux Collections

Les collections en Dart sont des objets qui permettent de stocker et de manipuler des groupes de valeurs. Dart propose plusieurs types de collections, chacune avec ses propres caractéristiques, utilisations et méthodes spécifiques.

## 2. Types de Collections et leurs Méthodes

### 2.1 List (Listes)

Les listes sont des collections ordonnées d'objets.

#### Création d'une liste :
```dart
var fruits = ['pomme', 'banane', 'orange'];
List<int> nombres = [1, 2, 3, 4, 5];
```

#### Méthodes principales :
- `add(E value)` : Ajoute un élément à la fin de la liste.
- `addAll(Iterable<E> iterable)` : Ajoute tous les éléments de l'iterable à la fin de la liste.
- `clear()` : Supprime tous les éléments de la liste.
- `remove(Object? value)` : Supprime la première occurrence de la valeur dans la liste.
- `removeAt(int index)` : Supprime l'élément à l'index spécifié.
- `insert(int index, E element)` : Insère un élément à l'index spécifié.
- `indexOf(E element, [int start = 0])` : Retourne l'index de la première occurrence de l'élément.
- `sort([int compare(E a, E b)?])` : Trie la liste.
- `sublist(int start, [int? end])` : Retourne une nouvelle liste contenant les éléments entre start et end.

#### Exemple d'utilisation :
```dart
fruits.add('fraise');
fruits.remove('banane');
fruits.sort();
print(fruits.indexOf('pomme'));
```

### 2.2 Set (Ensembles)

Les sets sont des collections non ordonnées d'objets uniques.

#### Création d'un set :
```dart
var couleurs = {'rouge', 'vert', 'bleu'};
Set<String> fruits = {'pomme', 'banane', 'orange'};
```

#### Méthodes principales :
- `add(E value)` : Ajoute un élément au set s'il n'est pas déjà présent.
- `addAll(Iterable<E> elements)` : Ajoute tous les éléments de l'iterable au set.
- `remove(Object? value)` : Supprime la valeur du set.
- `contains(Object? element)` : Vérifie si l'élément est dans le set.
- `intersection(Set<Object?> other)` : Retourne un nouveau set avec les éléments présents dans les deux sets.
- `union(Set<E> other)` : Retourne un nouveau set avec les éléments des deux sets.
- `difference(Set<Object?> other)` : Retourne un nouveau set avec les éléments présents dans ce set mais pas dans other.

#### Exemple d'utilisation :
```dart
couleurs.add('jaune');
couleurs.remove('vert');
print(couleurs.contains('rouge'));
var autresCouleurs = {'bleu', 'violet', 'jaune'};
print(couleurs.intersection(autresCouleurs));
```

### 2.3 Map (Dictionnaires)

Les maps sont des collections de paires clé-valeur.

#### Création d'une map :
```dart
var scores = {'Alice': 95, 'Bob': 87, 'Charlie': 92};
Map<String, int> ages = {'Alice': 30, 'Bob': 25, 'Charlie': 35};
```

#### Méthodes principales :
- `addAll(Map<K, V> other)` : Ajoute toutes les paires clé/valeur de other à cette map.
- `clear()` : Supprime toutes les paires clé/valeur de la map.
- `containsKey(Object? key)` : Vérifie si la map contient la clé donnée.
- `containsValue(Object? value)` : Vérifie si la map contient la valeur donnée.
- `remove(Object? key)` : Supprime la paire clé/valeur associée à key.
- `update(K key, V update(V value), {V ifAbsent()?})` : Met à jour la valeur associée à la clé.
- `keys` : Retourne une vue des clés de la map en tant qu'iterable.
- `values` : Retourne une vue des valeurs de la map en tant qu'iterable.

#### Exemple d'utilisation :
```dart
scores['David'] = 88;
scores.remove('Bob');
print(scores.containsKey('Alice'));
print(scores.keys);
print(scores.values);
```

## 3. Méthodes Communes aux Collections

Ces méthodes sont applicables aux List, Set, et Map :

- `forEach(void f(E element))` : Applique la fonction f à chaque élément.
- `map<T>(T f(E element))` : Transforme chaque élément et retourne un nouvel iterable.
- `where(bool test(E element))` : Filtre les éléments selon une condition.
- `any(bool test(E element))` : Vérifie si au moins un élément satisfait le prédicat.
- `every(bool test(E element))` : Vérifie si tous les éléments satisfont le prédicat.
- `isEmpty` : Vérifie si la collection est vide.
- `length` : Retourne le nombre d'éléments dans la collection.

Exemple d'utilisation :
```dart
fruits.forEach((fruit) => print(fruit));
var fruitsMajuscules = fruits.map((fruit) => fruit.toUpperCase()).toList();
var nombresPairs = nombres.where((nombre) => nombre % 2 == 0).toList();
```

## 4. Collections Immuables

Dart permet de créer des collections immuables :

```dart
final listImmuable = List.unmodifiable([1, 2, 3]);
final setImmuable = Set.unmodifiable({1, 2, 3});
final mapImmuable = Map.unmodifiable({'a': 1, 'b': 2});
```

## 5. Spread Operator (...) et Collection if/for

Le spread operator permet d'insérer tous les éléments d'une collection dans une autre :

```dart
var liste1 = [1, 2, 3];
var liste2 = [0, ...liste1, 4]; // [0, 1, 2, 3, 4]
```

Dart permet d'utiliser des conditions et des boucles lors de la création de collections :

```dart
var estActif = true;
var utilisateurs = [
  'Admin',
  if (estActif) 'Utilisateur Actif',
];

var carres = [
  for (var i = 1; i <= 5; i++) i * i
];
```

## 6. Bonnes Pratiques

1. Choisissez le type de collection approprié selon vos besoins.
2. Utilisez des collections typées pour une meilleure sécurité de type.
3. Préférez les collections immuables lorsque le contenu ne doit pas changer.
4. Utilisez les méthodes de collection pour un code plus concis et lisible.
5. Soyez attentif aux performances, surtout pour les grandes collections.

## 7. Exercice Pratique

Créez une application de gestion de tâches simple qui utilise :
- Une `List<String>` pour stocker les tâches
- Un `Set<String>` pour les catégories de tâches
- Une `Map<String, int>` pour associer chaque tâche à sa priorité

Implémentez des fonctions pour ajouter, supprimer, trier et afficher les tâches, en utilisant les méthodes de collection appropriées.


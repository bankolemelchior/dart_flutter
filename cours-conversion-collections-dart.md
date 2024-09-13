# Conversion de collections en Dart

## 1. Introduction

Les collections sont des structures de données essentielles en programmation, et Dart offre plusieurs types de collections, chacune avec ses propres caractéristiques et utilisations.

Les principaux types de collections en Dart sont :
- List : une collection ordonnée d'éléments
- Set : une collection non ordonnée d'éléments uniques
- Map : une collection de paires clé-valeur

## 2. Conversion de List

### 2.1 List vers Set

```dart
List<int> numbers = [1, 2, 2, 3, 3, 4];
Set<int> numberSet = numbers.toSet();
print(numberSet); // Output: {1, 2, 3, 4}
```

La méthode `toSet()` convertit une List en Set, éliminant automatiquement les doublons.

### 2.2 List vers Map

```dart
List<String> fruits = ['apple', 'banana', 'cherry'];
Map<int, String> fruitMap = fruits.asMap();
print(fruitMap); // Output: {0: apple, 1: banana, 2: cherry}
```

La méthode `asMap()` crée un Map où les indices de la List deviennent les clés.

## 3. Conversion de Set

### 3.1 Set vers List

```dart
Set<String> colors = {'red', 'green', 'blue'};
List<String> colorList = colors.toList();
print(colorList); // Output: [red, green, blue]
```

La méthode `toList()` convertit un Set en List.

## 4. Conversion de Map

### 4.1 Map vers List

```dart
Map<String, int> ages = {'Alice': 30, 'Bob': 25, 'Charlie': 35};

// Conversion en List de MapEntry
List<MapEntry<String, int>> entries = ages.entries.toList();
print(entries); // Output: [MapEntry(Alice: 30), MapEntry(Bob: 25), MapEntry(Charlie: 35)]

// Conversion en List de clés
List<String> names = ages.keys.toList();
print(names); // Output: [Alice, Bob, Charlie]

// Conversion en List de valeurs
List<int> ageList = ages.values.toList();
print(ageList); // Output: [30, 25, 35]
```

Un Map peut être converti en différents types de List selon les besoins.

## 5. Conversions avec transformation

### 5.1 Utilisation de map()

```dart
List<int> numbers = [1, 2, 3, 4, 5];
List<String> numberStrings = numbers.map((n) => 'Number $n').toList();
print(numberStrings); // Output: [Number 1, Number 2, Number 3, Number 4, Number 5]
```

La méthode `map()` permet de transformer chaque élément lors de la conversion.

## 6. Conversions entre Iterable et autres collections

### 6.1 Iterable vers List/Set

```dart
Iterable<int> numberIterable = [1, 2, 3, 4, 5].where((n) => n % 2 == 0);
List<int> evenList = numberIterable.toList();
Set<int> evenSet = numberIterable.toSet();
print(evenList); // Output: [2, 4]
print(evenSet); // Output: {2, 4}
```

Les méthodes `toList()` et `toSet()` peuvent être utilisées sur n'importe quel Iterable.

## 7. Conversions chaînées

```dart
Map<String, int> scores = {'Alice': 95, 'Bob': 85, 'Charlie': 90};
List<String> highScorers = scores.entries
    .where((entry) => entry.value >= 90)
    .map((entry) => entry.key)
    .toList();
print(highScorers); // Output: [Alice, Charlie]
```

On peut chaîner plusieurs opérations pour des conversions plus complexes.

## 8. Points importants à retenir

- La conversion peut modifier l'ordre des éléments (ex: List vers Set puis vers List).
- Certaines conversions peuvent entraîner une perte d'informations (ex: Map vers List de valeurs perd les clés).
- Les conversions sont utiles pour adapter les données aux besoins spécifiques de différentes parties de votre code.
- Utilisez les méthodes de conversion de manière judicieuse pour maintenir la lisibilité et l'efficacité de votre code.



#  ██████╗ ██████╗  █████╗ ██╗   ██╗ ██████╗ 
#  ██╔══██╗██╔══██╗██╔══██╗██║   ██║██╔═══██╗
#  ██████╔╝██████╔╝███████║██║   ██║██║   ██║
#  ██╔══██╗██╔══██╗██╔══██║╚██╗ ██╔╝██║   ██║
#  ██████╔╝██║  ██║██║  ██║ ╚████╔╝ ╚██████╔╝
#  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝  ╚═══╝   ╚═════╝ 
 
# Code créé par [Melchior BANKOLE]

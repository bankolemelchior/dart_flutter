# flutter_application_1

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


### Introduction à Dart

Dart est un langage de programmation orienté objet et conçu pour développer des applications rapides et évolutives sur plusieurs plateformes, notamment le web, le mobile et le bureau. Il est principalement utilisé pour développer des applications Flutter, mais il peut également être utilisé pour des projets backend ou serveur.

## multiplateforme
Le terme multiplateforme désigne la capacité d’un langage de programmation ou d’un framework à permettre le développement d'applications qui fonctionnent sur plusieurs types de plateformes ou systèmes d'exploitation à partir d'un seul et même code source. Dans le cas de Dart et Flutter, cela signifie que vous pouvez écrire une application une seule fois et la déployer sur les systèmes suivants :

1. Mobile (iOS et Android)
  Dart, via le framework Flutter, est couramment utilisé pour développer des applications mobiles qui fonctionnent à la fois sur Android et iOS. Avec Flutter, le même code Dart génère des interfaces utilisateurs natives pour les deux plateformes, permettant de créer des applications mobiles performantes sans avoir à coder séparément pour chaque système d'exploitation.
2. Web
  Dart permet également de créer des applications qui fonctionnent dans un navigateur web. Avec Flutter Web, les applications Dart peuvent être compilées en JavaScript et exécutées directement dans les navigateurs comme Chrome, Firefox, Safari, etc. Cela permet d’utiliser le même code pour une application mobile et une application web.
3. Bureau (macOS, Windows, Linux)
  Flutter Desktop permet de créer des applications natives pour les systèmes d'exploitation de bureau comme Windows, macOS, et Linux. L'interface utilisateur et la logique de l'application peuvent être partagées avec les versions mobiles et web, assurant une expérience utilisateur cohérente sur plusieurs types d'appareils.
4. Appareils embarqués
  Bien que moins fréquent pour l’instant, Flutter et Dart peuvent être utilisés pour des appareils embarqués ou des systèmes embarqués (comme les appareils IoT), ce qui ouvre la possibilité de développer des interfaces utilisateurs pour des dispositifs spécifiques.

Pourquoi est-ce important ?
Développer des applications multiplateformes permet de :
  Réduire le temps et les coûts de développement : Avec un seul code source, il n'est plus nécessaire d'écrire du code séparé pour chaque plateforme.
  Maintenir facilement les applications : Toute modification ou mise à jour dans le code est automatiquement disponible sur toutes les plateformes.
  Assurer une expérience utilisateur cohérente : Le même design et les mêmes fonctionnalités peuvent être déployés sur différents appareils.
Ainsi, avec Dart et Flutter, vous pouvez développer une application une seule fois et la déployer sur Android, iOS, le web, et les systèmes d'exploitation de bureau, ce qui en fait une solution puissante pour les développeurs qui recherchent la flexibilité et la portabilité.

## 1. Introduction au langage Dart
Dart a été développé par Google pour résoudre les limitations des langages traditionnels dans les environnements modernes. Il est fortement typé, mais permet également un typage dynamique. Le code Dart est compilé en bytecode et peut être exécuté sur une machine virtuelle Dart (VM), ou il peut être compilé en JavaScript pour les applications web.

## Installation de Dart
Pour installer Dart, vous pouvez suivre les étapes suivantes :

Via Flutter SDK (si vous développez des applications Flutter) :

Téléchargez et installez Flutter SDK, Dart est inclus dans l'installation.
Installation directe :

Visitez le site officiel.
Suivez les instructions pour installer Dart sur votre système d'exploitation.
Configuration de votre environnement
Vous pouvez utiliser un IDE comme Visual Studio Code ou Android Studio pour écrire du code Dart. Ces IDEs offrent une intégration native avec Flutter et Dart.

## 2. Les bases du langage Dart
Structure d’un programme Dart
````dart
void main() {
  print('Hello, Dart!');
}
````

Le point d'entrée de tout programme Dart est la fonction main().

## Types de données
Dart est fortement typé, mais offre aussi la flexibilité du typage dynamique. Voici quelques types de données courants :
  int : Entiers (ex : int age = 25;)
  double : Nombres à virgule flottante (ex : double pi = 3.14;)
  String : Chaînes de caractères (ex : String name = 'John';)
  bool : Booléens (ex : bool isTrue = true;)
  var : Type dynamique, déterminé au moment de l'exécution (ex : var city = 'Paris';)
  
  Variables et constantes
  ````dart
  var name = 'Alice'; // Variable
  const pi = 3.14;    // Constante
  final city = 'Paris'; // Final (assigné une fois)
````
  const : Valeur fixée à la compilation.
  final : Valeur assignée une seule fois, au moment de l'exécution.
Les opérateurs
Les opérateurs en Dart sont similaires à d'autres langages :
  Opérateurs arithmétiques : +, -, *, /, %
  Opérateurs de comparaison : ==, !=, >, <, >=, <=
  Opérateurs logiques : &&, ||, !

  3. Les contrôles de flux

 Les conditions
  ````dart
  if (age > 18) {
  print('Adulte');
} else {
  print('Mineur');
}
````
Les boucles

Boucle for :
````dart
for (int i = 0; i < 5; i++) {
  print(i);
}
````
Boucle while :
````dart
int i = 0;
while (i < 5) {
  print(i);
  i++;
}
````
Boucle do-while :
````dart
int i = 0;
do {
  print(i);
  i++;
} while (i < 5);
````

  4. Les fonctions
````dart
  void greet(String name) {
  print('Hello, $name');
}
greet('Alice');
````
  5. Les classes et objets
  6. Collections en Dart
  7. Gestion des exceptions
  8. Programmation asynchrone
  9. Packages et gestion des dépendances




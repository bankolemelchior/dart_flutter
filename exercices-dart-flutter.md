# Exercices Dart pour le développement Flutter

## Exercice 1 : Variables et Types de données

**Objectif** : Familiariser les étudiants avec les types de données de base en Dart.

**Instructions** :
1. Créez des variables pour stocker les informations suivantes :
   - Le nom d'une application (String)
   - Le nombre de téléchargements (int)
   - La note moyenne de l'application (double)
   - Si l'application est gratuite ou non (bool)
2. Affichez toutes ces informations dans la console.

**Exemple de code** :
```dart
void main() {
  String appName = "FlutterQuiz";
  int downloads = 10000;
  double rating = 4.5;
  bool isFree = true;

  print("Nom de l'app : $appName");
  print("Nombre de téléchargements : $downloads");
  print("Note moyenne : $rating");
  print("Est gratuite : $isFree");
}
```

## Exercice 2 : Fonctions et Paramètres nommés

**Objectif** : Pratiquer la création de fonctions avec des paramètres nommés, couramment utilisés dans Flutter.

**Instructions** :
1. Créez une fonction `createUser` qui prend les paramètres nommés suivants :
   - `name` (obligatoire)
   - `age` (obligatoire)
   - `email` (optionnel)
   - `isPremium` (optionnel, par défaut à false)
2. La fonction doit retourner une chaîne formatée avec ces informations.
3. Appelez la fonction avec différentes combinaisons de paramètres.

**Exemple de code** :
```dart
String createUser({
  required String name, 
  required int age, 
  String? email, 
  bool isPremium = false
}) {
  return "Utilisateur: $name, Age: $age, Email: ${email ?? 'Non fourni'}, Premium: $isPremium";
}

void main() {
  print(createUser(name: "Alice", age: 30));
  print(createUser(name: "Bob", age: 25, email: "bob@example.com", isPremium: true));
}
```

## Exercice 3 : Listes et Mappages

**Objectif** : Manipuler des listes et des mappages, structures de données courantes dans les applications Flutter.

**Instructions** :
1. Créez une liste de chaînes représentant des tâches à faire.
2. Ajoutez, supprimez et modifiez des éléments dans la liste.
3. Créez un mappage représentant un utilisateur avec des clés pour 'nom', 'age', et 'hobbies' (la valeur de 'hobbies' devrait être une liste).
4. Affichez et modifiez les valeurs du mappage.

**Exemple de code** :
```dart
void main() {
  List<String> todos = ['Apprendre Dart', 'Pratiquer Flutter', 'Créer une app'];
  todos.add('Publier l\'app');
  todos.removeAt(1);
  todos[0] = 'Maîtriser Dart';
  print("Tâches : $todos");

  Map<String, dynamic> user = {
    'nom': 'Charlie',
    'age': 28,
    'hobbies': ['lecture', 'coding', 'voyage']
  };
  print("Utilisateur : $user");
  user['age'] = 29;
  (user['hobbies'] as List<String>).add('photographie');
  print("Utilisateur mis à jour : $user");
}
```

## Exercice 4 : Classes et Héritage

**Objectif** : Comprendre les concepts de classe et d'héritage, fondamentaux dans Flutter pour la création de widgets personnalisés.

**Instructions** :
1. Créez une classe `Widget` avec des propriétés `width` et `height`.
2. Créez une sous-classe `Button` qui hérite de `Widget` et ajoute une propriété `label`.
3. Implémentez une méthode `display()` dans chaque classe pour afficher leurs propriétés.
4. Créez des instances de ces classes et appelez leurs méthodes.

**Exemple de code** :
```dart
class Widget {
  double width;
  double height;

  Widget(this.width, this.height);

  void display() {
    print("Widget: Largeur=$width, Hauteur=$height");
  }
}

class Button extends Widget {
  String label;

  Button(double width, double height, this.label) : super(width, height);

  @override
  void display() {
    super.display();
    print("Bouton: Label=$label");
  }
}

void main() {
  var widget = Widget(100, 50);
  var button = Button(200, 80, "Cliquez-moi");

  widget.display();
  button.display();
}
```

## Exercice 5 : Gestion d'État Simplifiée

**Objectif** : Simuler une gestion d'état basique, concept crucial dans Flutter.

**Instructions** :
1. Créez une classe `Counter` avec une propriété `count` et des méthodes pour incrémenter et décrémenter.
2. Implémentez une méthode `notifyListeners()` qui affiche un message lorsque le compteur change.
3. Créez une fonction `main()` qui simule l'utilisation de ce compteur dans une application.

**Exemple de code** :
```dart
class Counter {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }

  void decrement() {
    _count--;
    notifyListeners();
  }

  void notifyListeners() {
    print("Le compteur a changé. Nouvelle valeur : $_count");
  }
}

void main() {
  var counter = Counter();
  print("Simulation d'une application Flutter");
  print("Compteur initial: ${counter.count}");
  
  counter.increment(); // Simule un clic sur un bouton +
  counter.increment();
  counter.decrement(); // Simule un clic sur un bouton -
}
```


#  ██████╗ ██████╗  █████╗ ██╗   ██╗ ██████╗ 
#  ██╔══██╗██╔══██╗██╔══██╗██║   ██║██╔═══██╗
#  ██████╔╝██████╔╝███████║██║   ██║██║   ██║
#  ██╔══██╗██╔══██╗██╔══██║╚██╗ ██╔╝██║   ██║
#  ██████╔╝██║  ██║██║  ██║ ╚████╔╝ ╚██████╔╝
#  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝  ╚═══╝   ╚═════╝ 
 
# Code créé par [Melchior BANKOLE]


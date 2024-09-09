import 'package:flutter/material.dart';

void main() {
  //widgetsApp //MaterialApp //CupertinoApp
  //widgets is low level, so instead of using WidgetsApp() in the run app
  runApp(MaterialApp(
    home: const HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.green,
    ),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Awesome App"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(8),
          // color: Colors.red,
          width: 100,
          height: 100,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Colors.deepPurpleAccent,
          ),
          child: const Text("Child Text"),
        ),
      ),
    );
  }
}

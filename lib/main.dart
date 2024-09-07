import 'package:flutter/material.dart';

void main() {
  //widgetsApp //MaterialApp //CupertinoApp
  //widgets is low level, so instead of using WidgetsApp() in the run app
  runApp(MaterialApp(
    home: HomePage(),
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
        title: Text("Awesome App"),
      ),
      body: Container(
        child: Text("Body container"),
      ),
    );
  }
}

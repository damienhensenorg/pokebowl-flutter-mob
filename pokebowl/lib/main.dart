import 'package:flutter/material.dart';
import 'package:pokebowl/myWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Pokebowl',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("PokeGrab"),
          ),
          body: ListView(
            children: [
              MyWidget(),
              MyWidget(),
              MyWidget(),
              MyWidget(),
              MyWidget(),
              MyWidget(),
              MyWidget(),
              MyWidget(),
              MyWidget(),
              MyWidget(),
              MyWidget(),
              MyWidget(),
              MyWidget(),
              MyWidget(),
            ],
          ),
        ));
  }
}

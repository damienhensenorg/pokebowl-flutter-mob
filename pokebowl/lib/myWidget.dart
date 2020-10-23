import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {
          print('tapped');
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondRoute()),
          );
        },
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: Container(
            alignment: Alignment.center,
            child: Text('Click me!', style: TextStyle()),
          ),
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
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
          body: Center(
            child: FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('close')),
          ),
        ));
  }
}

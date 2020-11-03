import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Extra's",
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Extra's")),
      body: Container(
        child: Center(
          child: RaisedButton(
            color: Colors.deepPurple,
            textColor: Colors.white,
            onPressed: () {
              testAlert(context);
            },
            child: Text("Open Popup!"),
          ),
        ),
      ),
    );
  }

  void testAlert(BuildContext context) {
    var alert = AlertDialog(
      title: Text("POP-UP"),
      content: Text("THIS IS A POPUP"),
      actions: [
        FlatButton(child: Text("NO"), onPressed: () => Navigator.pop(context)),
        FlatButton(child: Text("OK"), onPressed: () => Navigator.pop(context)),
      ],
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }
}

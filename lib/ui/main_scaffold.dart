import 'package:flutter/material.dart';

class MainScaffold extends StatelessWidget {

  final String title;
  MainScaffold({this.title});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar( title: Text(title),),
      body: Center(child :
        Column(
          children: <Widget>[
            Text("choississez votre BLoC"),
            RaisedButton(
              child: Text("Compteur"),
              onPressed: null,
            ),
            RaisedButton(
              child: Text("Texte"),
              onPressed: null,
            ),
          ]
        )),
    );
  }
}
import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Compteur")),
      body: Center(child: Text("Compteur"),),
    );
  }
}
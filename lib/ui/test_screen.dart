import 'package:flutter/material.dart';

class TextScreen extends StatelessWidget {
  final String title;
  TextScreen({@required this.title});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text(title)),
    );
  }
}
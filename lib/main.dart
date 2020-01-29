import 'package:bloc_multi/ui/main_scaffold.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BLoCs multiples',
      theme: ThemeData(primarySwatch: Colors.blue,),
      home: MainScaffold(title: 'Flutter Demo Home Page'),
    );
  }
}

import 'package:bloc_multi/bloc/bloc_provider.dart';
import 'package:bloc_multi/bloc/counter_bloc.dart';
import 'package:bloc_multi/ui/counter_screen.dart';
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("choississez votre BLoC"),
            RaisedButton(
              child: Text("Compteur"),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context){
                    return BlocProvider<CounterBloc>(
                      child: CounterScreen(),
                      bloc: CounterBloc(),
                    );
                  }),
                );
              },
            ),
            RaisedButton(
              child: Text("Texte"),
              onPressed: null,
            ),
          ]
        )
      ),
    );
  }
}
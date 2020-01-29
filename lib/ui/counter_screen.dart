import 'package:bloc_multi/bloc/bloc_provider.dart';
import 'package:bloc_multi/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider .of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(title: Text("Compteur")),
      body: StreamBuilder(
        stream: bloc.stream,
        builder: (context, snapshot){
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          );
        },
      ),
    );
  }
}
import 'package:flutter/cupertino.dart';

import 'bloc.dart';

class BlocProvider<T extends Bloc> extends StatefulWidget {
  //Bloc en question
  final T bloc;

  //Child va s'occuper se bloc
  final Widget child;

  //Constructeur
  BlocProvider({@required this.bloc, @required this.child});

  //valeur du type
  static Type _providerType<T>() => T;

  //Configurer le bloc
  static T of<T extends Bloc>(BuildContext context) {
    final BlocProvider<T> _provider = context.findAncestorWidgetOfExactType<BlocProvider<T>>();
    return _provider.bloc;
  }


  State createState() => _BlocProviderState();
}

class _BlocProviderState extends State<BlocProvider> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return widget.child;
  }

  @override
  void dispose() {
    widget.bloc.dispose();
    super.dispose();
  }
}
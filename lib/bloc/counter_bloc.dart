import 'dart:async';

import 'bloc.dart';

class CounterBloc extends Bloc {
  int count = 0;
  final _streamController = StreamController<int>();
  Sink<int> get sink => _streamController.sink;
  Stream<int> get stream => _streamController.stream;

  increment() => sink.add(count++);

  decrement() => sink.add(count--);

  CounterBloc() {
    sink.add(count);
  }

  @override
  void dispose() => _streamController.close();
}
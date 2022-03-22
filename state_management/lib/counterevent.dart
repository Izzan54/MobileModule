import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:async';
import 'package:flutter/material.dart';

//When you need a predefined list of values which do represent some kind of numeric or textual data, 
//you should use an enum.
// ignore: non_constant_identifier_names
enum CounterEvent { increment, decrement }

  class CounterBloc extends  Bloc<CounterEvent, int>{
  CounterBloc(int initialState) : super(initialState);

  @override
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    switch (event) {
      case CounterEvent.decrement:
        yield state - 1;
        break;
      case CounterEvent.increment:
        yield state + 1;
        break;
    }
  }
  }

  

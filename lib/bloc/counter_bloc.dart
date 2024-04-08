import 'package:flutter_bloc/flutter_bloc.dart';

// Creating an event
class CounterIncrementEvent {}

class CounterBloc extends Bloc<CounterIncrementEvent, int> {
  CounterBloc() : super(0);
}

import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_eventes.dart';

// class CounterBloc extends Bloc<CounterIncrementEvent, int> {               // But if we just make one event class and hardcode it here, we won't be able to
//   CounterBloc() : super(0) {                                               // add more events, thus we have to make a parent class.
//     on<CounterIncrementEvent>(
//       (event, emit) {
//         emit(state + 1);
//       },
//     );
//   }
// }
class CounterBloc extends Bloc<CounterEvents, int> {
  CounterBloc() : super(0) {
    on<CounterIncrementEvent>(
      (event, emit) {
        emit(state + 1);
      },
    );

    on<CounterDecrementEvent>((event, emit) {
      if (state == 0) {
        return;
      }
      emit(state - 1);
    });
  }
}

import 'package:bloc_practice_app/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangePage extends StatelessWidget {
  const ChangePage({super.key});

  @override
  Widget build(BuildContext context) {
    // final counterCubit = BlocProvider.of<CounterCubit>(context);
    final counterBloc = BlocProvider.of<CounterBloc>(context);

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FloatingActionButton(
              onPressed: () => counterBloc.add(CounterIncrementEvent()),
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: () => counterBloc.add(CounterDecrementEvent()),
              tooltip: 'Decrement',
              child: const Icon(Icons.minimize),
            ),
          ],
        ),
      ),
    );
  }
}

part of 'counter_bloc.dart'; // This means it belongs to the same lib as counter_bloc.dart

// Creating a parent class to use more than one event
sealed class CounterEvents {}

// Creating an event for increment
class CounterIncrementEvent extends CounterEvents {}

// Creating an event for decrement
class CounterDecrementEvent extends CounterEvents {}

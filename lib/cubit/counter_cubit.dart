
import 'package:flutter_bloc/flutter_bloc.dart';


abstract class CounterState {
  int count = 0;
}

class InitialCounterState extends CounterState {
  int get count => super.count;
}

class CounterStateAfterIncrement extends CounterState {
  int get count => super.count + 1;
}

class CounterStateAfterDecrement extends CounterState {
  int get count => super.count - 1;
}

class CounterCubit extends Cubit<int> {
  final CounterStateAfterIncrement counterStateAfterIncrement;
  final CounterStateAfterDecrement counterStateAfterDecrement;
  CounterCubit(this.counterStateAfterIncrement,
      this.counterStateAfterDecrement) : super(0);

  void increment() {
    emit(state + 1);
  }

  void decrement() {
    emit(state - 1);
  }
}
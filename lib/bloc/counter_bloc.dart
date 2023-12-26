import 'package:flutter_bloc/flutter_bloc.dart';
part 'counter_bloc_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterIncrementEvent>(increment);
    on<CounterDecrementEvent>(decrement);
  }

  Future<void> increment(event, emit) {
    return Future.microtask(() => emit(state+1));
  }

  Future<void> decrement(event, emit) {
    return Future.microtask(() => emit(state-1));
  }

}
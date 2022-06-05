import 'package:bloc_exercise/home/bloc/counter_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<Increment, int> {
  CounterBloc() : super(0) {
    on<Increment>(_onIncrement);
  }

  void _onIncrement(Increment event, Emitter emit) {
    print("onIncrement called");
    emit(state + 1);
  }
}

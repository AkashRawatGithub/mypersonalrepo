

import 'package:bloc/bloc.dart';
import 'package:mytestingapp/counterApp/counterBloc/counter_event.dart';
import 'package:mytestingapp/counterApp/counterBloc/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState>{
  CounterBloc():super(const CounterState()){
    on<IncrementCounter>(_increment);
    on<DecrementCounter>(_dencrement);
  }

  void _increment(IncrementCounter event, Emitter<CounterState> emit){
    emit(state.copyWith(counter: state.counter + 1));
  }
  void _dencrement(DecrementCounter event, Emitter<CounterState> emit){
    emit(state.copyWith(counter: state.counter - 1));
  }
}
import 'package:bloc/bloc.dart';
import 'package:mytestingapp/RandomGC/randomBloc/random_event.dart';
import 'package:mytestingapp/RandomGC/randomBloc/random_state.dart';

class RandomBloc extends Bloc<RandomEvent, RandomState> {
  RandomBloc() : super(const RandomState()) {
    on<SwitchEnableDisableEvent>(_switchEnableDisable);
    on<SliderEvent>(_slider);
  }

  void _switchEnableDisable(
    SwitchEnableDisableEvent event,
    Emitter<RandomState> emit,
  ) {
    emit(state.copyWith(switchGC: !state.switchGC));
  }

  void _slider(
      SliderEvent event,
    Emitter<RandomState> emit,
  ) {
    emit(state.copyWith(slideGC: event.newVal));
  }
}

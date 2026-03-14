import 'package:equatable/equatable.dart';

abstract class RandomEvent extends Equatable{
  const RandomEvent();
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class SwitchEnableDisableEvent extends RandomEvent{}
class SliderEvent extends RandomEvent{
  double newVal;
  SliderEvent({required this.newVal});

  @override
  // TODO: implement props
  List<Object?> get props => [newVal];

}


import 'package:equatable/equatable.dart';

class RandomState extends Equatable{
  final bool switchGC;
  final double slideGC;

  const RandomState({
    this.switchGC = false,
    this.slideGC = 1.0
  });

  RandomState copyWith({bool? switchGC, double? slideGC}){
    return RandomState(
      switchGC: switchGC ?? this.switchGC,
      slideGC: slideGC ?? this.slideGC
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [switchGC,slideGC];
}
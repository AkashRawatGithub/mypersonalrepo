import 'package:equatable/equatable.dart';

abstract class CameraEvent extends Equatable{
  const CameraEvent();

  @override
  // TODO: implement props
  List<Object?> get props => [];

}

class CaptureImage extends CameraEvent{}
class PickerImage extends CameraEvent{}
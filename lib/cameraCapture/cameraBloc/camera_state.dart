
import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';

class CameraState extends Equatable{
  final XFile? file;
  const CameraState({this.file});

  CameraState copyWith({XFile? file}){
    return CameraState(
      file: file ?? this.file
    );

  }

  @override
  // TODO: implement props
  List<Object?> get props => [file];

}
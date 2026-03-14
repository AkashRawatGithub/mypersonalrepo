
import 'package:bloc/bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mytestingapp/cameraCapture/cameraBloc/camera_event.dart';
import 'package:mytestingapp/cameraCapture/cameraBloc/camera_state.dart';
import 'package:mytestingapp/utils/image_picker_utils.dart';

class CameraBloc extends Bloc<CameraEvent,CameraState>{
  final ImagePickerUtils imagePickerUtils;
  CameraBloc(this.imagePickerUtils):super(const CameraState()){
    on<CaptureImage>(_cameraCapture);
  }

  Future<void> _cameraCapture(CameraEvent event, Emitter<CameraState> emit) async {
    XFile? file= await ImagePickerUtils().cameraCapturedImage();
    emit(state.copyWith(file: file));
  }
}
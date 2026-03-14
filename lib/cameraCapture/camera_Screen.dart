import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mytestingapp/cameraCapture/cameraBloc/camera_bloc.dart';
import 'package:mytestingapp/cameraCapture/cameraBloc/camera_event.dart';
import 'package:mytestingapp/cameraCapture/cameraBloc/camera_state.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key});

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Camera"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: BlocBuilder<CameraBloc, CameraState>(
              builder: (context, state) {
                if (state.file==null) {
                  return InkWell(
                    onTap: (){
                      context.read<CameraBloc>().add(CaptureImage());
                    },
                    child: CircleAvatar(child: Icon(Icons.camera)));
                } else {
                  return Image.file(File(state.file!.path.toString()));
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

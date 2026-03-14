import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mytestingapp/RandomGC/randomBloc/random_bloc.dart';
import 'package:mytestingapp/cameraCapture/cameraBloc/camera_bloc.dart';
import 'package:mytestingapp/counterApp/counterBloc/counter_bloc.dart';
import 'package:mytestingapp/routes/app_routes.dart';
import 'package:mytestingapp/routes/route_generator.dart';
import 'package:mytestingapp/utils/image_picker_utils.dart';
import 'core/constants/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => CounterBloc(),
        ),
        BlocProvider(
          create: (context) => RandomBloc(),
        ),
     BlocProvider(
          create: (context) => CameraBloc(ImagePickerUtils()),
        ),
      ],
      child: MaterialApp(

        debugShowCheckedModeBanner: false,

        theme: AppTheme.lightTheme,

        darkTheme: AppTheme.darkTheme,

        themeMode: ThemeMode.system,
        initialRoute: AppRoutes.counterScreen,

        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
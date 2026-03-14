import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mytestingapp/RandomGC/randomBloc/random_bloc.dart';
import 'package:mytestingapp/RandomGC/randomBloc/random_event.dart';
import 'package:mytestingapp/RandomGC/randomBloc/random_state.dart';

import '../routes/app_routes.dart';


class RandomGc extends StatefulWidget {
  const RandomGc({super.key});

  @override
  State<RandomGc> createState() => _RandomGcState();
}

class _RandomGcState extends State<RandomGc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Random GC"),),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Switch", style: TextStyle(color: Colors.black),),
                  BlocBuilder<RandomBloc, RandomState>(
                    buildWhen: (previous,current)=>previous.switchGC != current.switchGC,
                    builder: (context, state) {
                      return Switch(
                          value: state.switchGC, onChanged: (newValue) {
                        if (kDebugMode) {
                          print("$newValue");
                        }
                        context.read<RandomBloc>().add(
                            SwitchEnableDisableEvent());
                      });
                    },
                  ),


                ],
              ),
            ),

            BlocBuilder<RandomBloc, RandomState>(
              buildWhen: (previous,current)=> previous.slideGC != current.slideGC,
              builder: (context, state) {

                if (kDebugMode) {
                  print("sss");
                }
                return Container(
                  height: 200,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  color: Colors.red.withOpacity(state.slideGC),
                );
              },
            ),
            BlocBuilder<RandomBloc, RandomState>(
              buildWhen: (previous,current)=> previous.slideGC != current.slideGC,
              builder: (context, state) {
                if (kDebugMode) {
                  print(";;}");
                }
                return Slider(value: state.slideGC, onChanged: (newVal) {

                  context.read<RandomBloc>().add(SliderEvent(newVal: newVal));
                });
              },
            ),

            MaterialButton(onPressed: (){
              Navigator.pushReplacementNamed(context, AppRoutes.cameraScreen);
            },child: Text("Next",style: TextStyle(color: Colors.red),),),

          ],
        ),
      ),
    );
  }
}

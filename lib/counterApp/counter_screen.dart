import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mytestingapp/counterApp/counterBloc/counter_bloc.dart';
import 'package:mytestingapp/counterApp/counterBloc/counter_event.dart';
import 'package:mytestingapp/counterApp/counterBloc/counter_state.dart';
import 'package:mytestingapp/routes/app_routes.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter App"),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state){
            return Center(child: Text(state.counter.toString()));

          }),

          SizedBox(height: 20,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(onPressed: (){
                context.read<CounterBloc>().add(IncrementCounter());
              },child: Text("+"),),
              MaterialButton(onPressed: (){
                context.read<CounterBloc>().add(DecrementCounter());
              },child: Text("-"),),
            ],
          ),

          MaterialButton(onPressed: (){
            Navigator.pushReplacementNamed(context, AppRoutes.randomGC);
          },child: Text("Next"),),

        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_firebase_login/counter/cubit/counter_cubit.dart';

class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text('Counter'),
      ),
      body: Center(child:BlocBuilder<CounterCubit, int>(
        builder: (context, state) {
          return Text('$state',
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),);
        }
      )),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: ()=> context.read<CounterCubit>().increment(),
          child: const Icon(Icons.add),
          ),
          SizedBox(height: 8,),
          FloatingActionButton(onPressed: () =>context.read<CounterCubit>().decrement(),
          child: const Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
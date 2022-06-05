import 'package:bloc_exercise/home/bloc/counter_bloc.dart';
import 'package:bloc_exercise/home/bloc/counter_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_exercise/home/index.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext _) => CounterBloc(),
        child: Scaffold(
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<CounterBloc, int>(builder: (_, state) {
                return Text(
                  '$state',
                  style: TextStyle(fontSize: 49),
                );
              }),
              LayoutBuilder(builder: (BuildContext ctx, _) {
                return ElevatedButton(
                  onPressed: () {
                    final counterBloc = BlocProvider.of<CounterBloc>(ctx);
                    counterBloc.add(Increment());
                  },
                  child: const Icon(Icons.add),
                );
              })
            ],
          )),
        ));
  }
}



import 'package:bloc_state_management_capabilities/bloc/counter_bloc.dart';
import 'package:bloc_state_management_capabilities/cubit/counter_cubit.dart';
import 'package:bloc_state_management_capabilities/inc_dec_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    final counterCubit = BlocProvider.of<CounterCubit>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            BlocBuilder<CounterBloc, int>(
              builder: (content, count) {
                return Text(
                  '$count',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: "navigation",
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => const IncDecPage()));
        },
        tooltip: 'Navigation',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}

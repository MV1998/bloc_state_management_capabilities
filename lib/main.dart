import 'package:bloc_state_management_capabilities/bloc/counter_bloc.dart';
import 'package:bloc_state_management_capabilities/cubit/counter_cubit.dart';
import 'package:bloc_state_management_capabilities/home_page.dart';
import 'package:bloc_state_management_capabilities/todo_app/cubit/todo_cubit.dart';
import 'package:bloc_state_management_capabilities/todo_app/todo_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            create: (_) =>
                CounterCubit(CounterStateAfterIncrement(), CounterStateAfterDecrement())
        ),
        BlocProvider(create: (_) => CounterBloc()),
        BlocProvider(create: (_) => TodoCubit())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const TodoHome(),
      ),
    );
  }
}
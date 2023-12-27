import 'package:bloc_state_management_capabilities/bloc/counter_bloc.dart';
import 'package:bloc_state_management_capabilities/todo_app/cubit/todo_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoDetail extends StatelessWidget {
  const TodoDetail({super.key});

  @override
  Widget build(BuildContext context) {
    var text = "";
    return Scaffold(
      appBar: AppBar(
        title: const Text("ToDo Detail"),
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              text = value;
            },
          ),
          TextButton(onPressed: () {
            BlocProvider.of<TodoCubit>(context).addTodo({"name": text});
          }, child: const Text("Add"))
        ],
      ),
    );
  }
}

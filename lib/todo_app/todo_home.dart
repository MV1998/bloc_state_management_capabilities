

import 'package:bloc_state_management_capabilities/todo_app/cubit/todo_cubit.dart';
import 'package:bloc_state_management_capabilities/todo_app/todo_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoHome extends StatefulWidget {
  const TodoHome({super.key});

  @override
  State<TodoHome> createState() => _TodoHomeState();
}

class _TodoHomeState extends State<TodoHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Todo App with BLoC"),
      ),
      body: BlocBuilder<TodoCubit, List<Map<String, String>>>(
        builder: (content, todoJsonObjectList) {
          print(todoJsonObjectList);
          return ListView.builder(
            itemCount: todoJsonObjectList.length,
            itemBuilder: (_, index) {
              return ListTile(
                title: Text(todoJsonObjectList[index]["name"] ?? ""),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: "navigation",
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => const TodoDetail()));
        },
        tooltip: 'Navigation',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}

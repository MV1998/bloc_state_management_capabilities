

import 'package:flutter_bloc/flutter_bloc.dart';

class TodoCubit extends Cubit<List<Map<String, String>>> {
  TodoCubit() : super([]);

  void addTodo(Map<String, String> todo) {
    print([...state, todo]);
    emit([...state, todo]);
  }
}
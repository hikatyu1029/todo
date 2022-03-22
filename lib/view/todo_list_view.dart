import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/view/add_todo_view.dart';
import 'package:todo/view_model/todo_list_view_model.dart';

class TodoListView extends StatelessWidget {
  const TodoListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Todo List")),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) {
                      return AddTodoView();
                    },
                    fullscreenDialog: true));
          },
        ),
        body: MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => TodoListViewModel())
          ],
          child: const TodoListViewBody(),
        ));
  }
}

class TodoListViewBody extends StatelessWidget {
  const TodoListViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var vm = Provider.of<TodoListViewModel>(context, listen: false);
    return ListView.builder(
        itemCount: vm.todoList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(vm.todoList[index]),
          );
        });
  }
}

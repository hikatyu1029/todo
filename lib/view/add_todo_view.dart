import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_model/todo_list_view_model.dart';

class AddTodoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 件名用
    final titleValueController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("add todo"),
      ),
      body: Column(children: [
        Row(
          children: [
            Text("タイトル"),
            Flexible(
                child: TextField(
              controller: titleValueController,
            ))
          ],
        ),
        Row(
          children: [Text("日付"), Flexible(child: TextField())],
        ),
        Spacer(),
        ElevatedButton(
          onPressed: () {
            print(titleValueController.text);
          },
          child: Text("保存"),
        )
      ]),
    );
  }
}

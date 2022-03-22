import 'package:flutter/material.dart';

class AddTodoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("add todo"),
      ),
      body: Column(children: [
        Row(
          children: [Text("タイトル"), Flexible(child: TextField())],
        ),
        Row(
          children: [Text("日付"), Flexible(child: TextField())],
        ),
        Spacer(),
        ElevatedButton(
          onPressed: () {},
          child: Text("保存"),
        )
      ]),
    );
  }
}

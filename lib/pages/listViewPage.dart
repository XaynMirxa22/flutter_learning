import 'package:flutter/material.dart';
import 'package:lesson_1/main.dart';

class ListViewPage extends StatelessWidget {
  ListViewPage({
    Key? key,
  }) : super(key: key);

  var enterName = "";
  bool? checkBox1 = false;
  var groupValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("List View Page")),
          backgroundColor: Colors.red,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(
                    Icons.video_call,
                    color: Colors.red,
                  ),
                  title: Text("This is my Text"),
                  subtitle: Text("naming"),
                );
              }),
        ));
  }
}

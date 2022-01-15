import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Grid View Page')),
      body: GridView.builder(
          itemCount: 100,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                print("object");
              },
              title: const Text("This is Text"),
              subtitle: const Text("Name"),
              leading: const CircleAvatar(),
            );
          }),
    );
  }
}

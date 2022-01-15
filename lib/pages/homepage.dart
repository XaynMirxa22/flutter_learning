import 'package:flutter/material.dart';
import 'package:lesson_1/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameController = new TextEditingController();

  var enterName = "";
  bool? checkBox1 = false;
  var groupValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Learning App")),
          backgroundColor: Colors.red,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Entered Name : " + enterName),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    "Details Form",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 22.0,
                    ),
                  ),
                  TextField(
                    controller: _nameController,
                    onChanged: (val) {
                      setState(() {
                        enterName = val;
                      });
                    },
                    decoration: InputDecoration(
                        hintText: "Enter your name", label: Text("Name")),
                  ),
                  Row(
                    children: [
                      Radio(
                          value: 1,
                          groupValue: groupValue,
                          onChanged: (val) {
                            setState(() {
                              groupValue = int.parse(val.toString());
                            });
                          }),
                      Text("Male")
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                          value: 2,
                          groupValue: groupValue,
                          onChanged: (val) {
                            setState(() {
                              groupValue = int.parse(val.toString());
                            });
                          }),
                      Text("Female")
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                          value: 3,
                          groupValue: groupValue,
                          onChanged: (val) {
                            setState(() {
                              groupValue = int.parse(val.toString());
                            });
                          }),
                      Text("Unknown")
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                          value: checkBox1,
                          onChanged: (bool? val) {
                            setState(() {
                              checkBox1 = val;
                            });
                          }),
                      const Text("Private")
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

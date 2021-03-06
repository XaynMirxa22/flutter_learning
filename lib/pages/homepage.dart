import 'package:flutter/cupertino.dart';
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
                const SizedBox(
                  height: 30.0,
                ),
                const Text(
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
                  decoration: const InputDecoration(
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
                    const Text("Male")
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
                    const Text("Female")
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
                    const Text("Unknown")
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
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.deepPurple,
          child: ListView(
            padding: EdgeInsets.zero,
            children: const [
              DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: UserAccountsDrawerHeader(
                    accountName: Text("Mirxa Hasnain Ali Hamxa"),
                    accountEmail: Text("mirxa.hasnain@gmail.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/acc_person.jpg'),
                    ),
                  )),
              ListTile(
                leading: Icon(
                  CupertinoIcons.home,
                  color: Colors.white,
                ),
                title: Text(
                  "Home",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.profile_circled,
                  color: Colors.white,
                ),
                title: Text(
                  "Profile",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.mail,
                  color: Colors.white,
                ),
                title: Text(
                  "Email Me",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:http/http.dart' as http;
import 'package:lesson_1/utils/routes.dart';

class Part4 extends StatefulWidget {
  const Part4({Key? key}) : super(key: key);

  @override
  State<Part4> createState() => _Part4State();
}

class _Part4State extends State<Part4> {
  String result = "";

  final _loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.canvasColor,
      child: SingleChildScrollView(
        child: Form(
          key: _loginFormKey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_img.png",
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                "Welcome",
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      onChanged: (value) {},
                      validator: (value) {
                        if (value.toString().isEmpty) {
                          return 'Username cannot be empty';
                        } else {
                          return null;
                        }
                      },
                      decoration: const InputDecoration(
                        hintText: "Enter Username",
                        label: Text("Username"),
                      ),
                    ),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value.toString().isEmpty) {
                          return 'Password cannot be empty';
                        } else if (value.toString().length < 6) {
                          return 'Password should be atleast 6 characters';
                        } else {
                          return null;
                        }
                      },
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Enter Password",
                        label: Text("Password"),
                      ),
                    ),
                  ],
                ),
              ),

              // InkWell(
              //   onTap: () async {
              //     setState(() {
              //       requestApi = true;
              //     });

              //     await Future.delayed(const Duration(seconds: 2));
              //     Navigator.pushReplacementNamed(context, MyRoutes.homeRoute);
              //   },
              //   child: AnimatedContainer(
              //     duration: const Duration(seconds: 2),
              //     width: requestApi ? 50.0 : 150.0,
              //     height: 50.0,
              //     alignment: Alignment.center,
              //     child: requestApi
              //         ? const Icon(Icons.done, color: Colors.white)
              //         : const Text(
              //             "Login",
              //             style: TextStyle(
              //               color: Colors.white,
              //               fontWeight: FontWeight.bold,
              //               fontSize: 22.0,
              //             ),
              //           ),
              //     decoration: BoxDecoration(
              //       color: Colors.deepPurpleAccent,
              //       borderRadius: BorderRadius.circular(requestApi ? 80 : 8),
              //       //shape: requestApi ? BoxShape.circle : BoxShape.rectangle,
              //     ),
              //   ),
              // )

              ElevatedButton(
                onPressed: () {
                  // userValidation();
                  Navigator.pushReplacementNamed(
                      context, MyRoutes.dashboardRoute);
                },
                child: result == "in-progress"
                    ? const SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(
                          color: Colors.white,
                          strokeWidth: 3,
                        ),
                      )
                    : result == 'done'
                        ? const Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : const Text("Login"),
                style: TextButton.styleFrom(
                    minimumSize: const Size(120, 40),
                    backgroundColor: context.theme.buttonColor),
              ),
            ],
          ),
        ),
      ),
    );
  }

  userValidation() {
    if (_loginFormKey.currentState!.validate()) {
      setState(() {
        result = "in-progress";
      });
      userAuthentication();
    }
  }

  userAuthentication() async {
    var api =
        'https://www.7timer.info/bin/astro.php?lon=113.2&lat=23.1&ac=0&unit=metric&output=json&tzshift=0';

    var res = await http.read(Uri.parse(api));
    // var json = jsonDecode(res.toString());
    setState(() {
      result = "done";
    });
    Navigator.pushReplacementNamed(context, MyRoutes.dashboardRoute);
  }
}

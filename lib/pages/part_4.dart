import 'package:flutter/material.dart';
import 'package:lesson_1/utils/routes.dart';

class Part4 extends StatelessWidget {
  const Part4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
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
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Enter Username", label: Text("Username")),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Enter Password",
                      label: Text("Password"),
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
                child: const Text("Login"),
                style: TextButton.styleFrom(minimumSize: const Size(120, 40)))
          ],
        ),
      ),
    );
  }
}

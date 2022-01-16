import 'package:flutter/material.dart';
import 'package:lesson_1/utils/routes.dart';

class Part4 extends StatefulWidget {
  const Part4({Key? key}) : super(key: key);

  @override
  State<Part4> createState() => _Part4State();
}

class _Part4State extends State<Part4> {
  bool requestApi = false;

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

            InkWell(
              onTap: () async {
                setState(() {
                  requestApi = true;
                });

                await Future.delayed(const Duration(seconds: 2));
                Navigator.pushReplacementNamed(context, MyRoutes.homeRoute);
              },
              child: AnimatedContainer(
                duration: const Duration(seconds: 2),
                width: requestApi ? 50.0 : 150.0,
                height: 50.0,
                alignment: Alignment.center,
                child: requestApi
                    ? const Icon(Icons.done, color: Colors.white)
                    : const Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22.0,
                        ),
                      ),
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(requestApi ? 80 : 8),
                  //shape: requestApi ? BoxShape.circle : BoxShape.rectangle,
                ),
              ),
            )

            // ElevatedButton(
            //     onPressed: () {
            //       Navigator.pushNamed(context, MyRoutes.homeRoute);
            //     },
            //     child: const Text("Login"),
            //     style: TextButton.styleFrom(minimumSize: const Size(120, 40))),
          ],
        ),
      ),
    );
  }
}

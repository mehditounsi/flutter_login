import 'package:flutter/material.dart';
import '../components/textfield.dart';
import '../components/button.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign User in method

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //SizedBox for space
                  const SizedBox(height: 5),
                  //logo
                  const Icon(
                    Icons.lock,
                    size: 100,
                  ),
                  //SizedBox for space
                  const SizedBox(height: 10),
                  //welcome text
                  const Text('Welcome Back you\'ve been missed',
                      style: TextStyle(color: Colors.black, fontSize: 18)),
                  //SizedBox for space
                  const SizedBox(height: 40),
                  //username textfield
                  MyTextField(
                    controller: usernameController,
                    hintText: "Username",
                    obscureText: false,
                  ),
                  //SizedBox for space
                  const SizedBox(height: 20),
                  //password textfield
                  MyTextField(
                    controller: passwordController,
                    hintText: "Password",
                    obscureText: true,
                  ),
                  //SizedBox for space
                  const SizedBox(height: 10),
                  //forgot password text
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Forgot password ?',
                            style: TextStyle(color: Colors.black)),
                      ],
                    ),
                  ),
                  //SizedBox for space
                  const SizedBox(height: 10),
                  //sign in button
                  MyButton(onTap: signUserIn),

                  //SizedBox for space
                  const SizedBox(height: 50),
                  // or continue with

                  const Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.black,
                        ),
                      ),
                      Text('or continue with',
                          style: TextStyle(color: Colors.black)),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 50),

                  //google or aple sign in

                  const SizedBox(height: 50),

                  //not a member register now
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Not a member ?",
                          style: TextStyle(color: Colors.black)),
                      //SizedBox for space
                      SizedBox(width: 5),
                      Text("Register Now !",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold)),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

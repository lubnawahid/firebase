import 'package:firebase/screen/screen3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/model.dart';
import '../service/apiservice.dart';

class Screen2 extends StatefulWidget {
  // final String name;
  final String email;
 final String password;
  //final String confirmpassword;

  const Screen2(
      {
      required this.email,
    required this.password,

     // required this.confirmpassword
      });

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        backgroundColor: Colors.pink,
      ),
      body: SingleChildScrollView(
        child: Form(
          autovalidateMode: AutovalidateMode.always,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Login",
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: TextFormField(
                   controller: emailController,
                  decoration: InputDecoration(
                    labelText: "email",
                    hintText: "Enter Your Email",
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    labelText: "password",
                    hintText: "Enter Your Password",
                    prefixIcon: Icon(Icons.mail),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () async {
                  FirebaseService firebaseservice = FirebaseService();
                   FirebaseService().login(
                      email: emailController.text.trim(),
                      password: passwordController.text.trim(),
                  );
                   Navigator.push(context, MaterialPageRoute(builder: (context) => Screen3(email: emailController.text)));
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                    primary: Colors.pink,
                    fixedSize: Size(300, 50)),
                child: Text(
                  'Submit',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

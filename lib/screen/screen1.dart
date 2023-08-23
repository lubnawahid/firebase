import 'package:firebase/screen/screen2.dart';
import 'package:firebase/service/apiservice.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/model.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration"),
        backgroundColor: Colors.pink,
      ),
      body: SingleChildScrollView(
        child: Form(

          autovalidateMode: AutovalidateMode.always,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "REGISTER HERE!",
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: "name",
                    hintText: "Enter Your Name",
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: "email",
                    hintText: "Enter Your Email",
                    prefixIcon: Icon(Icons.mail),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    labelText: "password",
                    hintText: "Enter Your Paasword",
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: TextFormField(
                  controller: confirmpasswordController,
                  decoration: InputDecoration(
                    labelText: "Confirm Password",
                    hintText: "Enter Your Password",
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),),
                  ),
                ),
              ),

              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: () async {
                  FirebaseService firebaseservice = FirebaseService();
                   FirebaseService().register(
                    username: nameController.text,
                    email: emailController.text.trim(),
                    password: passwordController.text.trim(),
                    confirmpassword: confirmpasswordController.text,
                  );

                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) =>
                          Screen2(
                            password: passwordController.text,
                              email: emailController.text,
                             // password: passwordController.text,
                              // confirmpassword: confirmpasswordController
                              //     .text
                      )));
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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';





class Screen3 extends StatelessWidget {
  final String email;

  Screen3({required this.email});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text('email: $email'),


            SizedBox(height: 100,),

          ],
        ),
      ),
    );
  }
}
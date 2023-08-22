import 'package:firebase_auth/firebase_auth.dart';

class Firebaseservice{
  FirebaseAuth _auth = FirebaseAuth.instance;
  void signup({required String email,required String password}) async{
    await _auth.createUserWithEmailAndPassword(email: email, password: password);
  }
}
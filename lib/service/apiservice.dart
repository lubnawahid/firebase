import 'package:firebase_auth/firebase_auth.dart';

class FirebaseService{
  FirebaseAuth _auth = FirebaseAuth.instance;
  // void signup({ required String email,required String password}) async{
  //   await _auth.createUserWithEmailAndPassword(email: email, password: password);
  void register(
  {
    required String username,
  required String email,
  required String password,
  required String confirmpassword}) async{
       await _auth.createUserWithEmailAndPassword(email: email, password: password);

    print("Registration Sucessfull");

  }
  void login({


   required String email,
  required String password,

      }) async{
    await _auth.signInWithEmailAndPassword(email: email, password: password);
    print("Login Sucessfull");
  }
  void signout()async{
    await _auth.signOut();
    print('Sign Out');
  }
}
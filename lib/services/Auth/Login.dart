import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:note_app/veiws/screens/home_screem.dart';

Future<bool> LoginAccount({
  required String email,
  required String password,
  required BuildContext context,
}) async {
  try {
    // Create a new user with email and password
    UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    if (userCredential.user != null) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const HomeScreem()),
      );
    }
    
    return userCredential.user != null;
  } catch (e) {
    print('Error creating account: $e');
    return false;
  }
}
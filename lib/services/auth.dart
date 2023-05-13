import 'package:firebase_auth/firebase_auth.dart';
import 'package:derbyjo/models/user.dart';
import 'package:flutter/material.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  MyUser? _userfromFirebase(User user) {
    return user != null ? MyUser(uid: user.uid) : null;
  }

  //auth user change stream
  Stream<MyUser?> get user {
    return _auth
        .authStateChanges()
        .map((User? user) => _userfromFirebase(user!));
  }

  //Sign in with email and password
  login(String emailAddress, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: emailAddress, password: password);
      User? user = result.user;
      return _userfromFirebase(user!);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //register with email and password
  registerW(String emailAddress, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: emailAddress, password: password);
      User? user = result.user;
      return _userfromFirebase(user!);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //signout

  signout() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  static SnackBar customSnackBar({required String content}) {
    return SnackBar(
      backgroundColor: Colors.black,
      content: Text(
        content,
        style: const TextStyle(color: Colors.redAccent, letterSpacing: 0.5),
      ),
    );
  }

  //Sign in with google

  //signout from google

}

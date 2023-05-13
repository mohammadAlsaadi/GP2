import 'package:derbyjo/screens/authenication/login.dart';
import 'package:derbyjo/screens/authenication/signup.dart';
import 'package:flutter/material.dart';

class Authenicate extends StatefulWidget {
  const Authenicate({key});

  @override
  State<Authenicate> createState() => _AuthenicateState();
}

class _AuthenicateState extends State<Authenicate> {
  bool showSignin = true;

  void toggleview() {
    setState(() {
      showSignin = !showSignin;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showSignin) {
      return Login(toggleview: toggleview);
    } else {
      return Signup(toggleview: toggleview);
    }
  }
}

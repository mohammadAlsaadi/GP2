import 'package:derbyjo/models/user.dart';
import 'package:derbyjo/screens/authenication/authenication.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/home/home.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<MyUser?>(context);
    if (user == null) {
      return const Authenicate();
    } else {
      return const Home();
    }
  }
}

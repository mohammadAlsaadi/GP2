import 'package:derbyjo/services/auth.dart';
import 'package:flutter/material.dart';
import 'wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:provider/provider.dart';
import 'package:derbyjo/models/user.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({key});

  @override
  Widget build(BuildContext context) {
    return StreamProvider<MyUser?>.value(
      catchError: (User, user) {
        return null;
      },
      initialData: null,
      value: AuthService().user,
      child: const MaterialApp(
        home: Wrapper(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

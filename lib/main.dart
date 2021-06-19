import 'package:crypto_tracker/ui/authentication.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Needed to initialize firebase
  await Firebase
      .initializeApp(); // set-up firebase async before displaying main information.
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto Tracker',
      home: Authentication(),
      debugShowCheckedModeBanner: false,
    );
  }
}

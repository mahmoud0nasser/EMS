import 'package:center_system/Regiser.dart';
import 'package:center_system/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const EmsApp());
}

class EmsApp extends StatelessWidget {
  const EmsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Register_Screen(),
      // home: Scaffold(
      // body: null,
      // ),
    );
  }
}

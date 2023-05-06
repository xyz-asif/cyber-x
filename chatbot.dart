import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyA5FGVygR7d7Y9fm5Y30G9GeJkdrFwJW0c",
      appId: "1:475986361013:web:31c98961cf2102302d5cfc",
      messagingSenderId: "475986361013",
      projectId: "loki-d2266",
    ),
  );
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(), body: Text("hioi"));
  }
}

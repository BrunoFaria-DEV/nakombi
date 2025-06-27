import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:nakombi/main_page/main_page.dart';


void main() async {
  var options = const FirebaseOptions(
      apiKey: "AIzaSyAoboB9y7RGQGr20cAY3JAXLtyXiXivgBo",
      authDomain: "nakombi-4d4c7.firebaseapp.com",
      projectId: "nakombi-4d4c7",
      storageBucket: "nakombi-4d4c7.firebasestorage.app",
      messagingSenderId: "329652306210",
      appId: "1:329652306210:web:330e8067d6f29cddeda57b",
      measurementId: "G-SYBJBV9YMD"
  );
  if (kIsWeb) {
    await Firebase.initializeApp(options: options);
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 9, 87, 23))),
      home: const MainPage(),
    );
  }
}
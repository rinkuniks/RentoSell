import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:learnflutter/firebase_options.dart';
import 'package:learnflutter/screens/splash_screen.dart';
import 'package:learnflutter/themes/light_mode.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightMode,
      home: SplashScreen(),
    );
  }
}

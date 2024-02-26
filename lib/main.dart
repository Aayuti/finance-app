import 'package:finance_app/Auth/loginAuth.dart';
import 'package:finance_app/Auth/registerAuth.dart';
import 'package:finance_app/firebase_options.dart';
import 'package:finance_app/screens/DealsPage.dart';
import 'package:finance_app/screens/DefaultPage.dart';
import 'package:finance_app/screens/Graph.dart';
import 'package:finance_app/screens/HomePage.dart';
import 'package:finance_app/screens/LearnMore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:finance_app/screens/splash_screen.dart';
import 'package:finance_app/home_page.dart';
import 'package:finance_app/screens/LoginScreen.dart';
import 'package:finance_app/screens/AddTransactions.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        // Other routes...
        './registerAuth': (context) => const RegisterAccountWidget(),
        './loginAuth': (context) => const LoginScreen(),
      },
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}

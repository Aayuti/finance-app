import 'package:finance_app/screens/DealsPage.dart';
import 'package:finance_app/screens/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:finance_app/screens/splash_screen.dart';
import 'package:finance_app/home_page.dart';
import 'package:finance_app/screens/LoginScreen.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OffersWidget(),
    );
  }
}

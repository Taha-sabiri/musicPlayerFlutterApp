import 'package:flutter/material.dart';
import 'package:musicplyer/screens/splash_screen.dart';
import 'package:musicplyer/color.dart';

void main() {
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
      theme: ThemeData(
          scaffoldBackgroundColor: Mycolor.scafoldBg,
          primaryColor: Mycolor.primary),
      home: const SplashScreen(),
    );
  }
}

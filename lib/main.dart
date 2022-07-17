import 'package:flutter/material.dart';
import 'package:shamo/presentation/pages/login.dart';
import 'package:shamo/presentation/pages/register.dart';
import 'package:shamo/presentation/pages/splashscreen.dart';
import 'package:shamo/presentation/themes/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',
        useMaterial3: true,
        scaffoldBackgroundColor: bgColor1,
      ),
      home: const SafeArea(child: Splashscreen()),
    );
  }
}
